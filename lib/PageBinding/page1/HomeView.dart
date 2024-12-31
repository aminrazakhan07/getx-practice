import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:getx_prectise/PageBinding/page1/controller.dart';
import 'package:getx_prectise/PageBinding/page2/HomeView.dart';

class PageView1 extends StatelessWidget {
  const PageView1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(Get.find<Page1Controller>().pageName),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.to(PageView2());
          },
          child: Text('Navigate to Page 2'),
        ),
      ),
    );
  }
}