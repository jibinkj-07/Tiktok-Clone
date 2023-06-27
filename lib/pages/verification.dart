/*
  Authors : flutter_ninja (Flutter Ninja)
  Website : https://codecanyon.net/user/flutter_ninja/
  App Name : Netflix Clone Template
  This App Template Source code is licensed as per the
  terms found in the Website https://codecanyon.net/licenses/standard/
  Copyright and Good Faith Purchasers © 2022-present flutter_ninja.
*/
import 'package:flutter/material.dart';
import 'package:tiktok/pages/select_birthdate.dart';
import 'package:tiktok/widget/elevated_button.dart';
import '../components/styles.dart';

class Verification extends StatefulWidget {
  static const String id = 'Verification';

  const Verification({Key? key}) : super(key: key);

  @override
  _VerificationState createState() => _VerificationState();
}

class _VerificationState extends State<Verification>
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
          title:
              const Text('Verification', style: TextStyle(color: Colors.black)),
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
          blackHeadingSmall('Enter 6-digit code'),
          const SizedBox(height: 8),
          greyBoldText('Your code was send to admin@initappz.com'),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _textFieldOTP(first: true, last: false),
                  _textFieldOTP(first: false, last: false),
                  _textFieldOTP(first: false, last: false),
                  _textFieldOTP(first: false, last: false),
                  _textFieldOTP(first: false, last: false),
                  _textFieldOTP(first: false, last: true),
                ],
              ),
            ],
          ),
          const SizedBox(height: 8),
          greyTextSmall('Resend code 56s'),
          const SizedBox(height: 24),
          MyElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SelectBirthdate()));
              },
              width: double.infinity,
              height: 40,
              text: 'CONTINUE',
              colors: appColor)
        ],
      ),
    );
  }

  Widget _textFieldOTP({required bool first, last}) {
    return SizedBox(
      height: 50,
      width: 40,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: TextField(
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.isEmpty && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 24, fontFamily: "bold"),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: const InputDecoration(
            counter: Offstage(),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(width: 3, color: Colors.black12),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(width: 3, color: appColor),
            ),
          ),
        ),
      ),
    );
  }
}
