import 'package:firebase_auth_app/common/colors.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
            aspectRatio: 1,
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: containerColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
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
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Email",
                      labelStyle: TextStyle(color: titleColor),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
