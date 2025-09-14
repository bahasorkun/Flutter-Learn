import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learning/constants/assets.dart';
import 'package:lottie/lottie.dart';
import 'controller.dart';

class InitialPage extends GetView<InitialPageController> {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LottieBuilder.asset(AssetsConstant.LOADING_LOTTIE),
      ),
    );
  }
}
