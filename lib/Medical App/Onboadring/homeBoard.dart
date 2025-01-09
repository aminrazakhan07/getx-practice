import 'package:flutter/material.dart';
import 'package:getx_prectise/Medical%20App/Widgets/Indecator.dart';
import 'package:getx_prectise/Medical%20App/Widgets/Onboarding.dart';

class Onboardring extends StatefulWidget {
  const Onboardring({super.key});

  @override
  State<Onboardring> createState() => _OnboardringState();
}

class _OnboardringState extends State<Onboardring> {
  var currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.6,
            child: PageView(
              children: [
                CusOnboarding(
                  image: 'assets/onb2.jpg',
                  content:
                      'Streamline your health \n management\neffortlessly Elevate your \nhealthcare experience with\n every interaction.',
                ),
                CusOnboarding(
                  image: 'assets/onb3.jpg',
                  content:
                      'Empowering your wellness \n Journey \n Book your doctor`s \n appointment effortlessly!',
                ),
                CusOnboarding(
                  image: 'assets/onb1.jpg',
                  content:
                      'Streamline your health \n management\neffortlessly Elevate your \nhealthcare experience with\n every interaction.',
                ),
              ],
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
            ),
          ),
          pageIndecator(currentPage),
        ],
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          print('GEt Started');
        },
        child: Container(
          alignment: Alignment.center,
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
          ),
          child: Text(
            'Get Started',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
