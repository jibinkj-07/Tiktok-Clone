/*
  Authors : flutter_ninja (Flutter Ninja)
  Website : https://codecanyon.net/user/flutter_ninja/
  App Name : Netflix Clone Template
  This App Template Source code is licensed as per the
  terms found in the Website https://codecanyon.net/licenses/standard/
  Copyright and Good Faith Purchasers © 2022-present flutter_ninja.
*/
import 'package:flutter/material.dart';
import 'package:tiktok/pages/login.dart';
import 'package:tiktok/widget/elevated_button.dart';
import '../components/styles.dart';

class Welcome extends StatefulWidget {
  static const String id = 'Welcome';

  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  int tabID = 1;
  List<Category> categoryList = <Category>[
    const Category('Emotional'),
    const Category('Comedy'),
    const Category('Bollywood'),
    const Category('Beauty & Style'),
    const Category('Animals'),
    const Category('Food'),
    const Category('Emtertainment'),
    const Category('Kollywood'),
    const Category('Tollywood'),
    const Category('IT/Tech'),
    const Category('Learning'),
    const Category('Motivation'),
    const Category('Arts & Crafts'),
    const Category('Gaming'),
    const Category('Music'),
    const Category('Fitness & Health'),
    const Category('Travel'),
    const Category('Home Decor'),
    const Category('Auto'),
    const Category('Tech & Science'),
    const Category('Music'),
    const Category('Technology'),
    const Category('Flutter'),
    const Category('Angular'),
    const Category('Ionic'),
    const Category('React Native'),
  ];
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
              welcomeHeading('Choose your\ninterests'),
              Container(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: greyText('get better video recommendations')),
              SingleChildScrollView(
                // scrollDirection: Axis.horizontal,
                child: Wrap(
                  children: categoryList.map((e) {
                    return _buildCategory(context, e);
                  }).toList(),
                ),
              ),
            ],
          ),
        ));
  }

  Widget _buildCategory(context, e) {
    return GestureDetector(
      onTap: () {
        setState(() {
          tabID = e.hashCode;
        });
      },
      child: Container(
          margin: const EdgeInsets.only(right: 10, bottom: 8),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: tabID == e.hashCode ? appColor : Colors.white,
            border: Border.all(
                color: tabID == e.hashCode ? appColor : Colors.black38),
            borderRadius: const BorderRadius.all(Radius.circular(50)),
          ),
          child: Text(
            e.name,
            style: TextStyle(
                color: tabID == e.hashCode ? Colors.white : Colors.black,
                fontSize: 14,
                fontFamily: 'medium'),
          )),
    );
  }

  Widget _buildBottomNav() {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: OutlinedButton(
              child: const Text("SKIP",
                  style: TextStyle(color: Colors.black, fontFamily: 'medium')),
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.black38, width: 1),
                backgroundColor: Colors.transparent,
                primary: Colors.black,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(4),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Login()));
              },
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: MyElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Login()));
                },
                width: MediaQuery.of(context).size.width * 0.4,
                height: 36,
                text: 'NEXT',
                colors: appColor),
          )
        ],
      ),
    );
  }
}

class Category {
  const Category(this.name);
  final String name;
}
