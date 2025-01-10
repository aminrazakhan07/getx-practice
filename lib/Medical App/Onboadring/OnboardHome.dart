import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_prectise/Medical%20App/Auth/Loginview.dart';
import 'package:getx_prectise/Medical%20App/Widgets/CustomButton.dart';
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
      bottomNavigationBar: CustomButton(
        lbl: 'Get Started',
        onTap: () {
          Get.offAll(LoginviewPage());
        },
      ),
    );
  }
}
