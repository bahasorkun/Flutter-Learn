import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  const TextLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          ("Buy the best one" *
              10), //Dart dili burayı otomatik olarak bu yazıyı 10 kez tekrar edecek şekilde algılar.
              
        ),
      ),
    );
  }
}
