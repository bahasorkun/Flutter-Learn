import 'package:get/get.dart';

import 'controller.dart';

class InitialPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<InitialPageController>(InitialPageController());
  }
}
