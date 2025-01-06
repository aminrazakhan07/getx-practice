import 'package:get/get.dart';
import 'package:getx_prectise/PageBinding/page1/controller.dart';
import 'package:getx_prectise/PageBinding/page2/conrtoller.dart';

class Allbinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => Page1Controller());

    //
    Get.lazyPut(() => Page2Controller());
  }
}
