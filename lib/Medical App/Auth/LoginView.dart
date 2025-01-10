import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:getx_prectise/CustomText/TextField.dart';
import 'package:getx_prectise/Medical%20App/Widgets/CustomButton.dart';
import 'package:getx_prectise/Medical%20App/Widgets/alreadyHaveAcc.dart';
import 'package:getx_prectise/Medical%20App/Widgets/isDoctor.dart';

import '../Widgets/CustomButton.dart';

class LoginviewPage extends StatelessWidget {
  const LoginviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              //// Image for Avatar
              backgroundImage: AssetImage('assets/dr1.jpg'),

              //// Icon for Avatar
              // child: Icon(
              //   Icons.person,
              //   size: 110,
              //   color: Colors.white,
              // ),
            ),

            ///
            IsDoctor(
              doctor: 'Are you a Doctor',
            ),
            ////
            CustomTextField(
              lblText: 'Email',
              prefix: Icons.person,
            ),
            ////
            CustomTextField(
              lblText: 'Password',
              prefix: Icons.visibility_off,
              obscurs: true,
            ),
            ////
            Padding(
              padding: const EdgeInsets.only(right: 25.0, top: 10),
              child: Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () {
                    CustomSnackbar(
                      title: 'q',
                      message: 'Succe',
                    );
                  },
                  child: Text(
                    'Forget Password?',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
            ),
            ////
            CustomButton(
              onTap: () {
                CustomSnackbar(
                  title: 'q',
                  message: 'Succe',
                );
              },
              lbl: 'Login',
            ),
            ////
            AlreadyAccountCheck(
              comment: "Don't have account?",
              goToPage: ' Sign Up',
            ),
            ////
          ],
        ),
      ),
    );
  }
}
