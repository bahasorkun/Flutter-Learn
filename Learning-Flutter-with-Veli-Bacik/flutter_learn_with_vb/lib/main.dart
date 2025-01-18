import 'package:flutter/material.dart';
import 'package:flutter_learn_with_vb/101/container_sized_box_learn.dart';
import 'package:flutter_learn_with_vb/101/text_learn_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: ContainerSizedBoxLearn(),
    );
  }
}
