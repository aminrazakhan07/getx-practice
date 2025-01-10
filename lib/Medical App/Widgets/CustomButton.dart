import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButton extends StatelessWidget {
  final String lbl;
  final VoidCallback onTap;
  const CustomButton({
    super.key,
    this.lbl = 'Sign Up',
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 25, horizontal: 25),
      child: InkWell(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Text(
            lbl,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

////

class CustomSnackbar extends StatelessWidget {
  final String title;
  final String message;

  const CustomSnackbar({
    Key? key,
    required this.title,
    required this.message,
  }) : super(key: key);

  void showSnackbar() {
    Get.snackbar(
      title,
      message,
      snackPosition: SnackPosition.BOTTOM,
      // duration: Duration(seconds: 2),
      // backgroundColor: Colors.green,
      // colorText: Colors.white,
      // margin: EdgeInsets.all(10),
      // borderRadius: 10,
      // isDismissible: true,
      // dismissDirection: DismissDirection.horizontal,
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
