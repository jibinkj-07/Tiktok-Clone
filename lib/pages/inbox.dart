/*
  Authors : flutter_ninja (Flutter Ninja)
  Website : https://codecanyon.net/user/flutter_ninja/
  App Name : Netflix Clone Template
  This App Template Source code is licensed as per the
  terms found in the Website https://codecanyon.net/licenses/standard/
  Copyright and Good Faith Purchasers © 2022-present flutter_ninja.
*/
import 'package:flutter/material.dart';
import 'package:tiktok/pages/chat.dart';
import '../components/styles.dart';

class Inbox extends StatefulWidget {
  static const String id = 'Inbox';

  const Inbox({Key? key}) : super(key: key);

  @override
  _InboxState createState() => _InboxState();
}

class _InboxState extends State<Inbox> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  final List<String> _profileImages = [
    'assets/images/profile_1.png',
    'assets/images/profile_2.jpg',
    'assets/images/profile_3.jpg',
    'assets/images/profile_4.jpg',
    'assets/images/profile_5.jpg',
    'assets/images/profile_6.jpg',
  ];

  final List<String> _profileName = [
    'Richard Xavier',
    'Arunkumar',
    'Vasanth',
    'Pradeep Kumar',
    'Arya Laskhmi',
    'Mohan S',
  ];

  final List<String> _messages = [
    'Lets connect?',
    'Hello there..',
    'okay',
    'Hi',
    'Good video',
    'Send me that',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          titleSpacing: 0,
          backgroundColor: Colors.white,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.chat_bubble_outline,
                  color: Colors.black,
                )),
          ],
          title: const Text('All activiry', style: TextStyle(color: Colors.black)),
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        body: _buildBody());
  }

  Widget _buildBody() {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 6,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, i) => Column(
        children: <Widget>[
          ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Chat(name: _profileName[i], image: _profileImages[i])));
              },
              leading: CircleAvatar(backgroundImage: AssetImage(_profileImages[i])),
              title: boldText(_profileName[i]),
              subtitle: greyText(_messages[i]),
              trailing: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black38),
                  ),
                  child: blackText('Message'))),
        ],
      ),
    );
  }
}
