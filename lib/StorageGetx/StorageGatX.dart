// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_storage/get_storage.dart';

class StorageGatX extends StatefulWidget {
  const StorageGatX({super.key});

  @override
  State<StorageGatX> createState() => _StorageGatXState();
}

class _StorageGatXState extends State<StorageGatX> {
  //
  TextEditingController emailController = TextEditingController();

  ///
  var box = GetStorage();

  ///
  var name = 'Programing';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ///
            Text(
              'Email or Phone no ',
              style: TextStyle(color: Colors.grey[700]),
            ),
            //
            // TextField(
            //   controller: emailController,
            // ),
            /////
            Container(
              margin: EdgeInsets.only(left: 25, right: 25),
              child: Theme(
                data: ThemeData(
                  hintColor: Colors.transparent, // تھیم کا اثر ختم کرنے کے لیے
                ),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: 'User Name',
                    labelStyle: TextStyle(color: Colors.cyan),
                    hintText: 'Enter Name...', // ہنٹ ٹیکسٹ
                    hintStyle: TextStyle(
                      color: Colors.grey[600], // ہنٹ کا رنگ
                      fontSize: 16, // ٹیکسٹ کا سائز
                    ),
                    prefixIcon:
                        Icon(Icons.person, color: Colors.green), // آئیکن
                    filled: true, // بھرے رنگ کے لیے
                    fillColor: Colors.white, // بھرے رنگ کی وضاحت
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(color: Colors.green, width: 2.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(color: Colors.cyan, width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(color: Colors.green, width: 2.0),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                        vertical: 15, horizontal: 12), // زیادہ جگہ
                  ),
                  autofocus: true,
                  autocorrect: true,
                ),
              ),
            ),

            ///
            ElevatedButton(
              onPressed: () {
                //
                if (GetUtils.isEmail(emailController.text)) {
                  box.write('name', emailController.text);

                  //
                  Get.snackbar(
                    'Saved email',
                    'Successful',
                    colorText: Colors.white,
                    snackPosition: SnackPosition.BOTTOM,
                    // titleText: Text(
                    //   'Get X',
                    //   style: TextStyle(color: Colors.yellow),
                    // ),

                    duration: Duration(seconds: 3),

                    backgroundColor: Colors.green,
                    instantInit: true,
                    icon: Icon(Icons.ac_unit_outlined),
                    borderRadius: 8,
                    borderColor: Colors.white,
                    margin: EdgeInsets.all(20),
                    borderWidth: 3,
                    leftBarIndicatorColor: Colors.red,

                    shouldIconPulse: false,
                    isDismissible: true,
                    dismissDirection: DismissDirection.horizontal,

                    //
                    mainButton: TextButton(
                        onPressed: () {
                          // Action on button press
                        },
                        child: Icon(
                          Icons.done,
                          color: Colors.white,
                        )),
                    //
                    boxShadows: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                    //
                  );
                } else {
                  Get.snackbar(
                    'incorrect email',
                    'Enter correct email',

                    snackPosition: SnackPosition.BOTTOM,
                    // titleText: Text(
                    //   'Get X',
                    //   style: TextStyle(color: Colors.yellow),
                    // ),

                    duration: Duration(seconds: 3),
                    colorText: Colors.red,
                    backgroundColor: Colors.white,
                    instantInit: true,
                    icon: Icon(Icons.ac_unit_outlined),
                    borderRadius: 8,
                    borderColor: Colors.red,
                    margin: EdgeInsets.all(20),
                    borderWidth: 3,
                    leftBarIndicatorColor: Colors.black,

                    shouldIconPulse: false,
                    isDismissible: true,
                    dismissDirection: DismissDirection.horizontal,

                    //
                    mainButton: TextButton(
                      onPressed: () {
                        // Action on button press
                      },
                      child:
                          Text('Undo', style: TextStyle(color: Colors.green)),
                    ),
                    //
                    boxShadows: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                    //

                    onTap: (snack) {
                      // Action on tap
                    },
                    //
                  );
                }
                //
              },
              child: Text('WRITE'),
            ),

            ///
            Text(name),

            ///
            ElevatedButton(
              onPressed: () {
                setState(() {
                  name = box.read('name');
                });
              },
              child: Text('READ'),
            ),
          ],
        ),
      ),
    );
  }
}
