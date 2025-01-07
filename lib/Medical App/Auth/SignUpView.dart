// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:getx_prectise/Medical%20App/Widgets/isDoctor.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            CircleAvatar(
              child: Icon(
                Icons.person,
                color: Colors.blue[800],
                size: 100,
              ),
              radius: 60,
            ),
            IsDoctor(),
            //
            SizedBox(height: 20),
            CustomTextField(),
            //
          ],
        ),
      ),
    );
  }
}
