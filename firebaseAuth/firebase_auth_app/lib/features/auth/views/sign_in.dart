import 'package:firebase_auth_app/common/colors.dart';
import 'package:firebase_auth_app/features/auth/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/signin.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          AspectRatio(
            aspectRatio: 0.95,
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: containerColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                key: _formKey,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Sign In",
                          style: TextStyle(color: titleColor, fontSize: 24),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: TextFormField(
                          controller: _emailController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Email is required";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: "Email",
                            labelStyle: TextStyle(color: titleColor),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: borderColor),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: TextFormField(
                          controller: _passwordController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Password is required";
                            }
                            return null;
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: "Password",
                            labelStyle: TextStyle(color: titleColor),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: borderColor),
                            ),
                          ),
                        ),
                      ),
                  
                      SizedBox(height: 20),
                      Consumer(
                        builder: (context, ref, child) {
                          return MaterialButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                ref
                                    .read(authControllerProvider)
                                    .signInWithEmailAndPassword(
                                      email: _emailController.text,
                                      password: _passwordController.text,
                                    );
                              }
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                            color: buttonColor,
                            minWidth: double.infinity,
                            height: 40,
                            child: Text(
                              "Sign In",
                              style: TextStyle(color: containerColor),
                            ),
                          );
                        },
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: InkWell(
                          onTap: () {},
                          child: Text(
                            "Forgot Password ?",
                            style: TextStyle(
                              color: textButtonColor,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have an account ?",
                              style: TextStyle(
                                color: textButtonColor,
                                fontSize: 12,
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                  color: buttonColor,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
