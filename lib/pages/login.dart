/*
  Authors : flutter_ninja (Flutter Ninja)
  Website : https://codecanyon.net/user/flutter_ninja/
  App Name : Netflix Clone Template
  This App Template Source code is licensed as per the
  terms found in the Website https://codecanyon.net/licenses/standard/
  Copyright and Good Faith Purchasers © 2022-present flutter_ninja.
*/
import 'package:flutter/material.dart';
import 'package:tiktok/pages/verification.dart';
import 'package:tiktok/widget/elevated_button.dart';
import '../components/styles.dart';
import 'package:country_code_picker/country_code_picker.dart';

class Login extends StatefulWidget {
  static const String id = 'Login';

  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();

    _tabController = TabController(vsync: this, initialIndex: 1, length: 2);
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
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.help_outline),
              color: Colors.black45)
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: appColor,
          labelColor: Colors.black,
          labelStyle: const TextStyle(fontFamily: 'bold', color: Colors.black),
          unselectedLabelStyle:
              const TextStyle(fontFamily: 'bold', color: Colors.black),
          tabs: const <Widget>[
            Tab(text: "Phone"),
            Tab(text: "Email"),
          ],
        ),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          _buildPhone(),
          _buildEmail(),
        ],
      ),
    );
  }

  Widget _buildPhone() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                  width: MediaQuery.of(context).size.width * 0.23,
                  decoration: const BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.black26)),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: CountryCodePicker(
                          onChanged: print,
                          initialSelection: 'IN',
                          favorite: const ['+91', 'IN'],
                          textStyle: const TextStyle(
                              fontFamily: 'bold', color: Colors.black),
                          showFlagMain: false,
                          showCountryOnly: false,
                          showOnlyCountryWhenClosed: false,
                          alignLeft: false,
                        ),
                      ),
                      const Icon(Icons.arrow_drop_down_outlined, size: 18),
                    ],
                  )),
              const SizedBox(width: 8),
              Expanded(
                child: textField('Phone number'),
              ),
            ],
          ),
          const SizedBox(height: 24),
          RichText(
            text: const TextSpan(
                text: 'By continuing, you agree to TicTok ',
                style: TextStyle(
                    color: Colors.black54, fontFamily: 'regular', fontSize: 14),
                children: [
                  TextSpan(
                    text: 'Terms of use ',
                    style: TextStyle(
                        color: appColor, fontFamily: 'medium', fontSize: 14),
                  ),
                  TextSpan(
                    text: 'and confirm that you have read TicTok ',
                    style: TextStyle(
                        color: Colors.black54,
                        fontFamily: 'regular',
                        fontSize: 14),
                  ),
                  TextSpan(
                    text: 'Privacy Policy. ',
                    style: TextStyle(
                        color: appColor, fontFamily: 'medium', fontSize: 14),
                  ),
                  TextSpan(
                    text: 'If you sign up with SMS, SMS fees may apply.',
                    style: TextStyle(
                        color: Colors.black54,
                        fontFamily: 'regular',
                        fontSize: 14),
                  ),
                ]),
          ),
          const SizedBox(height: 24),
          MyElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Verification()));
              },
              width: double.infinity,
              height: 40,
              text: 'SEND CODE',
              colors: appColor)
        ],
      ),
    );
  }

  Widget _buildEmail() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          textField('Email address'),
          const SizedBox(height: 24),
          RichText(
            text: const TextSpan(
                text: 'By continuing, you agree to TicTok ',
                style: TextStyle(
                    color: Colors.black54, fontFamily: 'regular', fontSize: 14),
                children: [
                  TextSpan(
                    text: 'Terms of use ',
                    style: TextStyle(
                        color: appColor, fontFamily: 'medium', fontSize: 14),
                  ),
                  TextSpan(
                    text: 'and confirm that you have read TicTok ',
                    style: TextStyle(
                        color: Colors.black54,
                        fontFamily: 'regular',
                        fontSize: 14),
                  ),
                  TextSpan(
                    text: 'Privacy Policy. ',
                    style: TextStyle(
                        color: appColor, fontFamily: 'medium', fontSize: 14),
                  )
                ]),
          ),
          const SizedBox(height: 24),
          MyElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Verification()));
              },
              width: double.infinity,
              height: 40,
              text: 'SEND CODE',
              colors: appColor)
        ],
      ),
    );
  }
}
