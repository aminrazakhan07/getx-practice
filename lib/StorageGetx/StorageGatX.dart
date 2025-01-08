// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_prectise/CustomText/TextField.dart';

class StorageGatX extends StatefulWidget {
  const StorageGatX({super.key});

  @override
  State<StorageGatX> createState() => _StorageGatXState();
}

class _StorageGatXState extends State<StorageGatX> {
  //
  TextEditingController textEditinh = TextEditingController();

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

            /////
            CustomTextField(
              texController: textEditinh,
              lblText: 'User Name',
              prefix: Icons.person,
            ),

            ///
            ElevatedButton(
              onPressed: () {
                //
                if (GetUtils.isEmail(textEditinh.text)) {
                  box.write('name', textEditinh.text);

                  //
                  Get.snackbar(
                    '-',
                    "Successful \n${textEditinh.text} ",
                    colorText: Colors.white,
                    snackPosition: SnackPosition.BOTTOM,
                    titleText: Text(
                      'Saved',
                      style: TextStyle(color: Colors.yellow),
                    ),

                    duration: Duration(seconds: 3),

                    backgroundColor: Colors.green,
                    instantInit: true,
                    icon: Icon(Icons.storage_rounded),
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
                    '-',
                    'Enter correct email',
                    colorText: Colors.black,

                    snackPosition: SnackPosition.BOTTOM,
                    titleText: Text(
                      'Incorrect email',
                      style: TextStyle(color: Colors.red),
                    ),

                    duration: Duration(seconds: 3),

                    backgroundColor: Colors.white,
                    instantInit: true,
                    icon: Icon(Icons.ac_unit_outlined),
                    borderRadius: 4,
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
