import 'package:get/get.dart';
import 'package:getx_prectise/PageBinding/page1/controller.dart';

class Page1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Page1Controller());
  }
}
