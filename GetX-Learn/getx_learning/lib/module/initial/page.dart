import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learning/constants/assets.dart';
import 'package:lottie/lottie.dart';
import 'controller.dart';

class InitialPage extends GetView<InitialPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LottieBuilder.asset(AssetsConstant.LOADING_LOTTIE),
      ),
    );
  }
}
