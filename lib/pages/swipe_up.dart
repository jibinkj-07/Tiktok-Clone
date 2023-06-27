/*
  Authors : flutter_ninja (Flutter Ninja)
  Website : https://codecanyon.net/user/flutter_ninja/
  App Name : Netflix Clone Template
  This App Template Source code is licensed as per the
  terms found in the Website https://codecanyon.net/licenses/standard/
  Copyright and Good Faith Purchasers © 2022-present flutter_ninja.
*/
import 'package:flutter/material.dart';
import 'package:tiktok/pages/tabs.dart';
import 'package:tiktok/widget/elevated_button.dart';
import '../components/styles.dart';

class SwipeUp extends StatefulWidget {
  static const String id = 'SwipeUp';

  const SwipeUp({Key? key}) : super(key: key);

  @override
  _SwipeUpState createState() => _SwipeUpState();
}

class _SwipeUpState extends State<SwipeUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: _buildBottomNav(),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              welcomeHeading('Swipe up'),
              Container(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: mediumText(
                      'Videos are personalized for you based on what you watch, like, and share.')),
              Image.asset('assets/images/mobile.png',
                  width: double.infinity, fit: BoxFit.cover)
            ],
          ),
        ));
  }

  Widget _buildBottomNav() {
    return Container(
      padding: const EdgeInsets.all(16),
      child: MyElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const TabsExample()));
          },
          width: double.infinity,
          height: 40,
          text: 'START WATCHING',
          colors: appColor),
    );
  }
}
