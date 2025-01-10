import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AlreadyAccountCheck extends StatelessWidget {
  final comment;
  final goToPage;
  const AlreadyAccountCheck(
      {super.key,
      this.comment = 'Already have an account?',
      this.goToPage = ' Login'});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(comment),
        InkWell(
          onTap: () {
            Get.snackbar('Go to Sign Up', 'Successfully',
                snackPosition: SnackPosition.BOTTOM);
          },
          child: Text(
            goToPage,
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
