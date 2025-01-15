import 'package:coffee_shop_app/home_screen.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.black,
          ),
          // Arka Plan Görseli
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/onboard_coffe_photo.png'),
                alignment: Alignment.topCenter,
                fit: BoxFit.contain,
              ),
            ),
          ),

          // İçerik
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              const Text(
                "Fall in Love with \nCoffee in Blissful Delight!",
                style: TextStyle(
                    height: 1.5,
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Sora"),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 25), // Yazılar arasında boşluk
              const Text(
                "Welcome to our cozy coffee corner, where \nevery cup is a delightful for you.",
                style: TextStyle(
                  fontFamily: "Sora",
                  fontSize: 14,
                  height: 1.5,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 32,
              ),
              //Buton
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: SizedBox(
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFC67C4E),
                      padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: const BorderSide(color: Colors.black),
                      ),
                    ),
                    child: const Text(
                      "Get Started",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: "Sora",
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        height: 1.5,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 75,
              ),
            ],
          )
        ],
      ),
    );
  }
}
