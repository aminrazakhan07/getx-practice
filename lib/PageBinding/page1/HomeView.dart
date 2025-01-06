import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_prectise/PageBinding/page1/controller.dart';

class PageView1 extends StatelessWidget {
  const PageView1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(Get.find<Page1Controller>().pageName),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Page one'),
          SizedBox(height: 20),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Get.toNamed('/page2');
              },
              child: Text('Navigate to Page 2'),
            ),
          ),
        ],
      ),
    );
  }
}
