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
class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Container(
        margin: EdgeInsets.only(left: 25, right: 25),
        child: Theme(
          data: ThemeData(
            hintColor: Colors.transparent,
          ),
          child: TextField(
            // controller: emailController,
            decoration: InputDecoration(
              labelText: 'User Name',
              labelStyle: TextStyle(color: Colors.cyan),
              hintText: 'email or phone no',
              hintStyle: TextStyle(
                color: Colors.grey[400],
                fontSize: 16,
              ),
              prefixIcon: Icon(Icons.person, color: Colors.blue),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(color: Colors.blue, width: 2.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(color: Colors.cyan, width: 2.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(color: Colors.blue, width: 2.0),
              ),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 15, horizontal: 12),
            ),
            autofocus: true,
            autocorrect: true,
          ),
        ),
      ),
    );
  }
}
