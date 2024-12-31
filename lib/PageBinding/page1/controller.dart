import 'package:get/get.dart';

class Page1Controller extends GetxService {
  var pageName = 'Page 1';

  var count = 0.obs;

  increment() => count++;
}
