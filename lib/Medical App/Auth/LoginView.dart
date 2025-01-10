import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_prectise/CustomText/TextField.dart';
import 'package:getx_prectise/Medical%20App/Auth/SignUpView.dart';
import 'package:getx_prectise/Medical%20App/Auth/forgetPassword.dart';
import 'package:getx_prectise/Medical%20App/Widgets/CustomButton.dart';
import 'package:getx_prectise/Medical%20App/Widgets/alreadyHaveAcc.dart';
import 'package:getx_prectise/Medical%20App/Widgets/isDoctor.dart';

class LoginviewPage extends StatelessWidget {
  const LoginviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Login Page'),
      ),
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
                    Get.to(ForgetpasswordScr());
                    ////
                    Get.snackbar(
                      'Forget Password',
                      'Successfully',
                      snackPosition: SnackPosition.BOTTOM,
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
                ///
                Get.snackbar(
                  'Log in',
                  'Successfully',
                  snackPosition: SnackPosition.BOTTOM,
                );
              },
              lbl: 'Login ',
            ),
            ////
            AlreadyAccountCheck(
              comment: "Don't have account?",
              goToPage: ' Sign Up',
              onTap: () {
                //

                Get.offAll(SignUpScreen());

                ///
                Get.snackbar('Log in Page', 'Successfully',
                    snackPosition: SnackPosition.BOTTOM);
              },
            ),
            ////
          ],
        ),
      ),
    );
  }
}
