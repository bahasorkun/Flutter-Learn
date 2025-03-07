import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learning/base/initial_bindings.dart';
import 'package:getx_learning/routers/pages.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: AppPages.pages,
      initialRoute: Routes.INITIAL,
      initialBinding: InitialBinding(),
    );
  }
}
