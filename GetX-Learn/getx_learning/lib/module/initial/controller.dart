import 'package:get/get.dart';
import 'package:getx_learning/base/base_controller.dart';
import 'package:getx_learning/base/test_controller.dart';

class InitialPageController extends BaseController {
  TestController testController = Get.find();
  

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    testController.varim();
  }
  }

