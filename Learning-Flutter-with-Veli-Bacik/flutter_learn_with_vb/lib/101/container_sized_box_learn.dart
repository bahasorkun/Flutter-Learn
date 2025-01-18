import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const SizedBox(
            width: 200,
            height: 200,
            child: Text("Merhaba"),
          ),
          const SizedBox.shrink(),
          SizedBox.square(
            dimension: 50,
            child: Text("a" * 50),
          ),
          Container(
            width: 50,
            height: 50,
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
