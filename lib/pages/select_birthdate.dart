/*
  Authors : flutter_ninja (Flutter Ninja)
  Website : https://codecanyon.net/user/flutter_ninja/
  App Name : Netflix Clone Template
  This App Template Source code is licensed as per the
  terms found in the Website https://codecanyon.net/licenses/standard/
  Copyright and Good Faith Purchasers © 2022-present flutter_ninja.
*/
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiktok/pages/swipe_up.dart';
import 'package:tiktok/widget/elevated_button.dart';
import '../components/styles.dart';

class SelectBirthdate extends StatefulWidget {
  static const String id = 'SelectBirthdate';

  const SelectBirthdate({Key? key}) : super(key: key);

  @override
  _SelectBirthdateState createState() => _SelectBirthdateState();
}

class _SelectBirthdateState extends State<SelectBirthdate>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          titleSpacing: 0,
          backgroundColor: Colors.white,
          title: const Text('Sign up', style: TextStyle(color: Colors.black)),
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        body: _buildBody());
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          blackHeadingSmall('Whats your birthday?'),
          const SizedBox(height: 8),
          greyBoldText('Your birthday wont be shown publicly'),
          const SizedBox(height: 8),
          SizedBox(
            height: 200,
            child: CupertinoDatePicker(
              mode: CupertinoDatePickerMode.date,
              initialDateTime: DateTime(1969, 1, 1),
              onDateTimeChanged: (DateTime newDateTime) {},
            ),
          ),
          const SizedBox(height: 24),
          MyElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const SwipeUp()));
              },
              width: double.infinity,
              height: 40,
              text: 'NEXT',
              colors: appColor)
        ],
      ),
    );
  }
}
