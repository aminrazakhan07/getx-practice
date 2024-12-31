import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class PageView2 extends StatelessWidget {
  PageView2({super.key});

  // var a = Get.put(PageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Page 2'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Page two'),
          SizedBox(height: 20),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: Text('Back'),
            ),
          ),
        ],
      ),
    );
  }
}
