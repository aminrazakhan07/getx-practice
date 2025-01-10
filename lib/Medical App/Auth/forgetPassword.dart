import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:getx_prectise/CustomText/TextField.dart';
import 'package:getx_prectise/Medical%20App/Widgets/CustomButton.dart';

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
              lblText: 'email',
              prefix: Icons.visibility_off,
            ),
            CustomButton(
              onTap: () {
                Get.snackbar('Click', 'Successfully');
              },
              lbl: 'Get Otp',
            )
          ],
        ),
      ),
    );
  }
}
