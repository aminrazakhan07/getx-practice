import 'package:get/get.dart';

class Page2Controller extends GetxService {
  var namePage = 'Page 2';

  var counts = 0.obs;

  increments() => counts++;
}
