import 'package:calculator_app/constants/color.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key, required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
      color: darkGrey2,
      child: TextField(
        controller: controller,
        style: const TextStyle(fontSize: 50, color: Colors.white),
        decoration: const InputDecoration(
          border: InputBorder.none,
          filled: true,
          fillColor: darkGrey2,
        ),
        readOnly: true, // Metni düzenleyemezsin sadece okuma
        autofocus: true,
        showCursor: true,
        cursorColor: Colors.blue[800],
      ),
    );
  }
}
