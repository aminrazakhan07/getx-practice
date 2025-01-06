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
  ///
  var box = GetStorage();

  ///
  var name = '1234';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ///
            Text('Storage'),

            ///
            ElevatedButton(
              onPressed: () {
                box.write('name', 'vivo');

                //
                Get.snackbar(
                  'Saved',
                  'Added Data successfully',
                  snackPosition: SnackPosition.BOTTOM,
                  titleText: Text(
                    'Get X',
                    style: TextStyle(color: Colors.yellow),
                  ),

                  duration: Duration(seconds: 3),
                  colorText: Colors.white,
                  backgroundColor: Colors.cyan,
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
                    child: Text('Undo', style: TextStyle(color: Colors.white)),
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
