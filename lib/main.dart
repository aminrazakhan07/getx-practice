import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_prectise/Medical%20App/Auth/Loginview.dart';
import 'package:getx_prectise/Medical%20App/Auth/forgetPassword.dart';
import 'package:getx_prectise/Medical%20App/Onboadring/OnboardHome.dart';
import 'package:getx_prectise/PageBinding/page1/HomeView.dart';
import 'package:getx_prectise/PageBinding/page1/binding.dart';
import 'package:getx_prectise/PageBinding/page2/HomeView.dart';
import 'package:getx_prectise/PageBinding/page2/binding.dart';

void main() async {
  await GetStorage.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      /// we can use for binding this one
      // initialBinding: Allbinding(),

      ///  and this one
      getPages: [
        GetPage(
          name: '/page1',
          page: () => PageView1(),
          binding: Page1Binding(),
        ),
        GetPage(
          name: '/page2',
          page: () => PageView2(),
          binding: Page2Binding(),
        ),
      ],
      debugShowCheckedModeBanner: false,
      home: LoginviewPage(),
    );
  }
}
