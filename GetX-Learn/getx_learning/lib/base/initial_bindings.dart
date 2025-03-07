import 'package:get/get.dart';
import 'package:getx_learning/base/test_controller.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    
    Get.put(TestController());
  }
}
