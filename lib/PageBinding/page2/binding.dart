import 'package:get/get.dart';
import 'package:getx_prectise/PageBinding/page2/conrtoller.dart';

class Page2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Page2Controller());
  }
}
