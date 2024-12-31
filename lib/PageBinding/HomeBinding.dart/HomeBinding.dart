import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainHomeView extends StatelessWidget {
  const MainHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.toNamed('/page1');
          },
          child: Text('Navigate to Page 1'),
        ),
      ),
    );
  }
}
