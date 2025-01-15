import 'package:coffee_shop_app/on_board_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Coffee Shop',
      debugShowCheckedModeBanner: false,
      home: OnBoardingScreen(),
    );
  }
}
