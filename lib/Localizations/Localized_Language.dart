import 'package:flutter/material.dart';

class LanguagesView extends StatelessWidget {
  const LanguagesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text('Localization'),
          ),
          ////
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              // Container.changeLocale('Hi', 'Arb');
            },
            child: Text('Arabic'),
          ),

          ///
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            child: Text('Urdu'),
          ),

          ///
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            child: Text('Eng'),
          )
        ],
      ),
    );
  }
}
