import 'package:flutter/material.dart';

Widget pageIndecator(dynamic currentPage) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      currentPage == 0
          ? Container(
              height: 10,
              width: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue,
              ),
            )
          : Icon(
              Icons.circle_outlined,
              color: Colors.lightBlue,
              size: 10,
            ),
      currentPage == 1
          ? Container(
              height: 10,
              width: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue,
              ),
            )
          : Icon(
              Icons.circle_outlined,
              color: Colors.blue,
              size: 10,
            ),
      currentPage == 2
          ? Container(
              height: 10,
              width: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue,
              ),
            )
          : Icon(
              Icons.circle_outlined,
              color: Colors.blue,
              size: 10,
            )
    ],
  );
}
