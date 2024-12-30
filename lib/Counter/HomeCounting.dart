// ignore_for_file: unused_local_variable, non_constant_identifier_names, avoid_types_as_parameter_names

import 'package:flutter/material.dart';

import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_prectise/Counter/controllerCount.dart';

class HomepageCounting extends StatelessWidget {
  HomepageCounting({super.key});

  ///
  // controllerhome = Get.put(Controllerhome());

  final myController = Get.put(Controllerhome());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetBuilder<Controllerhome>(
                  // init: Controllerhome(),
                  // یہ بیلڈ میں یوز ہوسکتا ہے انیٹ کی جگہ
                  //Controllerhome = Get.put(Controllerhome());

                  // initState: (_) => print('Init state called'),
                  // dispose: (_) => print('controller disposed'),

                  ///
                  id: '1',
                  builder: (Controllerhome) => Text(
                        '${Controllerhome.counte}',
                        style: TextStyle(fontSize: 30),
                      )),
              Text('First Counter'),

              ///
              SizedBox(height: 15),
              ElevatedButton(
                  onPressed: () {
                    myController.incrementCounter();
                  },
                  child: Text(
                    'counter 1',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
            ],
          ),
          SizedBox(width: 30),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetBuilder<Controllerhome>(
                  builder: (Controllerhome) => Text(
                        '${Controllerhome.counte}',
                        style: TextStyle(fontSize: 30),
                      )),
              ////
              Text('First Counter'),
              SizedBox(height: 15),
              ElevatedButton(
                  onPressed: () {
                    var myController = Get.find<Controllerhome>();
                  },
                  child: Text(
                    'counter 2',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),

              ////
            ],
          )
        ],
      ),
    );
  }
}
