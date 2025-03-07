import 'package:get/get.dart';
import 'package:getx_learning/module/initial/bindings.dart';
import 'package:getx_learning/module/initial/page.dart';
part './routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.INITIAL,
      page: () => InitialPage(),
      binding: InitialPageBinding(),
    ),
  ];
}
