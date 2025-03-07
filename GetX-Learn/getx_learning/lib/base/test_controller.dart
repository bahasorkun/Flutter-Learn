import 'package:get/get.dart';

class TestController extends GetxController {
  static int count = 0;
  TestController() {
    count++;
    print("TestController $count");
  }
  void varim() {
    print("ben aslında gerçekten varım");
  }
}
