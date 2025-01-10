// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_prectise/CustomText/TextField.dart';
import 'package:getx_prectise/Medical%20App/Auth/LoginView.dart';
import 'package:getx_prectise/Medical%20App/Widgets/CustomButton.dart';
import 'package:getx_prectise/Medical%20App/Widgets/alreadyHaveAcc.dart';
import 'package:getx_prectise/Medical%20App/Widgets/isDoctor.dart';

class SignUpScreen extends StatelessWidget {
  final TextEditingController textEditin = TextEditingController();
  SignUpScreen({super.key});

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
            //Name
            SizedBox(height: 20),
            CustomTextField(
              texController: textEditin,
              lblText: 'User Name',
              prefix: Icons.person,
            ),

            //email
            CustomTextField(
              lblText: 'Emailasd',
              prefix: Icons.email,
            ),
            //PassCode
            CustomTextField(
              // prefixIcon: Icons.visibility_off,
              lblText: 'Password',
              obscurs: true,
              prefix: Icons.visibility_off,
            ),
            CustomButton(
              onTap: () {},
            ),
            //
            AlreadyAccountCheck(
              onTap: () {
                Get.offAll(const LoginviewPage());
                //
                Get.snackbar(
                  'Sing Up Page',
                  'Successfully',
                  snackPosition: SnackPosition.BOTTOM,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
