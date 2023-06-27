/*
  Authors : flutter_ninja (Flutter Ninja)
  Website : https://codecanyon.net/user/flutter_ninja/
  App Name : Netflix Clone Template
  This App Template Source code is licensed as per the
  terms found in the Website https://codecanyon.net/licenses/standard/
  Copyright and Good Faith Purchasers © 2022-present flutter_ninja.
*/
import 'package:flutter/material.dart';
import 'package:tiktok/pages/camera.dart';
import 'package:tiktok/pages/home.dart';
import 'package:tiktok/pages/inbox.dart';
import 'package:tiktok/pages/profile.dart';
import 'package:tiktok/pages/search.dart';
import '../components/styles.dart' as style;

class TabsExample extends StatefulWidget {
  const TabsExample({Key? key}) : super(key: key);
  static const String id = 'Tabs';

  @override
  _TabsExampleState createState() => _TabsExampleState();
}

class _TabsExampleState extends State<TabsExample> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.black,
        bottomNavigationBar: (TabBar(
          padding: const EdgeInsets.all(10),
          labelColor: style.appColor2,
          unselectedLabelColor: const Color.fromARGB(255, 185, 196, 207),
          indicatorColor: Colors.transparent,
          labelPadding: const EdgeInsets.symmetric(horizontal: 0),
          labelStyle: const TextStyle(
            fontFamily: 'regular',
            fontSize: 12,
          ),
          onTap: (int index) => setState(() => _currentIndex = index),
          tabs: [
            Tab(
              icon: Icon(Icons.home,
                  color: _currentIndex == 0
                      ? Colors.white
                      : const Color.fromARGB(255, 185, 196, 207)),
            ),
            Tab(
              icon: Icon(Icons.search_outlined,
                  color: _currentIndex == 1
                      ? Colors.white
                      : const Color.fromARGB(255, 185, 196, 207)),
            ),
            Tab(
              icon: Icon(Icons.add_box,
                  color: _currentIndex == 2
                      ? Colors.white
                      : const Color.fromARGB(255, 185, 196, 207)),
            ),
            Tab(
              icon: Icon(Icons.chat_bubble_outline,
                  color: _currentIndex == 3
                      ? Colors.white
                      : const Color.fromARGB(255, 185, 196, 207)),
            ),
            Tab(
              icon: Icon(Icons.person_outline,
                  color: _currentIndex == 4
                      ? Colors.white
                      : const Color.fromARGB(255, 185, 196, 207)),
            ),
          ],
        )),
        body: const TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            Home(),
            Search(),
            TakePictureScreen(),
            Inbox(),
            MyProfile(),
          ],
        ),
      ),
    );
  }
}
