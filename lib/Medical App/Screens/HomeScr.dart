import 'dart:async';
import 'package:flutter/material.dart';
import 'package:getx_prectise/Medical%20App/Widgets/ContainSlider.dart';
import 'package:getx_prectise/Medical%20App/Widgets/CategorCard.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomescrMedi extends StatelessWidget {
  const HomescrMedi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'MediApp',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            size: 35,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Containslider(),
          //
          Padding(
            padding: EdgeInsets.only(top: 8, left: 5),
            child: Text('Categories'),
          ),

          //
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (int i = 0; i < 10; i++) CategoriesCard(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
