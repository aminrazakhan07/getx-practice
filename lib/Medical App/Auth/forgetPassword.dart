import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_prectise/CustomText/TextField.dart';
import 'package:getx_prectise/Medical%20App/Widgets/CustomButton.dart';
import 'package:getx_prectise/Medical%20App/Widgets/SnackBart.dart';

class ForgetpasswordScr extends StatelessWidget {
  const ForgetpasswordScr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Forget Password'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextField(
              lblText: 'OTP',
              hint: 'OTP',
              prefix: Icons.visibility_off,
            ),
            CustomButton(
              onTap: () {
                SnackbarHelper.showSnackbar(
                  title: 'Currected',
                  message: 'Successfully',
                );
              },
              lbl: 'Otp Code',
            )
          ],
        ),
      ),
    );
  }
}
