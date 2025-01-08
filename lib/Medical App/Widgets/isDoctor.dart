import 'package:flutter/material.dart';

class IsDoctor extends StatefulWidget {
  const IsDoctor({super.key});

  @override
  State<IsDoctor> createState() => _IsDoctorState();
}

class _IsDoctorState extends State<IsDoctor> {
  bool IsDoctor = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Become a Doctor'),
        Switch(
            activeColor: Colors.blue,
            value: IsDoctor,
            onChanged: (value) {
              setState(() {
                IsDoctor = value;
              });
            })
      ],
    );
  }
}

//
