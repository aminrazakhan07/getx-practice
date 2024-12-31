// ignore_for_file: avoid_types_as_parameter_names

import 'package:get/get.dart';

////  GetxController use for short time memory
class Controllerhome extends GetxController {
  var counte = 0.obs;

  incrementCounter() {
    counte++;
    update(['1']);
  }

  @override
  void onInit() {
    print('Init called');

    super.onInit();

    //// called every time when value changes
    // ever(counte, (callback) => print('ever'));

    //// usr for any time change in list
    // everAll([counte], (Callback) => print('Ever all'));

    ////call for one time
    // once(counte, (callback) => print('Once'));

    ////change value with duration
    debounce(counte, (callback) => print('Debounce '),
        time: Duration(seconds: 3));

    //
  }

  @override
  void onClose() {
    print('disposed called ');
    super.onClose();
  }
}

////  GetxController use for Long time memory
class LoginPage extends GetxService {
  loginFunc() {}
}
