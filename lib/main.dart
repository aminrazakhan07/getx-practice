import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx_prectise/Counter/HomeCounting.dart';
import 'package:getx_prectise/PageBinding/HomeBinding.dart/HomeBinding.dart';
import 'package:getx_prectise/PageBinding/allBinding.dart';
import 'package:getx_prectise/PageBinding/page1/HomeView.dart';
import 'package:getx_prectise/PageBinding/page1/binding.dart';
import 'package:getx_prectise/PageBinding/page2/HomeView.dart';
import 'package:getx_prectise/PageBinding/page2/binding.dart';

void main() {
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
      home: MainHomeView(),
    );
  }
}
