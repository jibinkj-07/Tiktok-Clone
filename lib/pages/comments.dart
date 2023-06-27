/*
  Authors : flutter_ninja (Flutter Ninja)
  Website : https://codecanyon.net/user/flutter_ninja/
  App Name : Netflix Clone Template
  This App Template Source code is licensed as per the
  terms found in the Website https://codecanyon.net/licenses/standard/
  Copyright and Good Faith Purchasers © 2022-present flutter_ninja.
*/
import 'dart:developer';

import 'package:flutter/material.dart';
import '../components/styles.dart';

class Comments extends StatefulWidget {
  static const String id = 'Comments';

  const Comments({Key? key}) : super(key: key);

  @override
  _CommentsState createState() => _CommentsState();
}

class _CommentsState extends State<Comments> with SingleTickerProviderStateMixin {
  final List<String> _profileImages = [
    'assets/images/profile_1.png',
    'assets/images/profile_2.jpg',
    'assets/images/profile_3.jpg',
    'assets/images/profile_4.jpg',
  ];

  final List<String> _names = [
    'Kavin',
    'Ganesh',
    'Prem Kumar',
    'Koushik Romel',
  ];

  final List<String> _comments = [
    'Wow, this video is absolutely mesmerizing!',
    'This video just made my day! So much joy and positivity captured in a few seconds',
    'I\'m in awe of your creativity and the way you bring it to life. Simply stunning',
    'Bravo! You\'ve taken storytelling to a whole new level with this video.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 2,
          titleSpacing: 0,
          backgroundColor: Colors.white,
          title: const Text('Comments', style: TextStyle(color: Colors.black)),
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        bottomNavigationBar: _buildBottom(),
        body: _buildBody());
  }

  Widget _buildBody() {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, i) {
        final mod = i % 4;

        return Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ListTile(
                  onTap: () {},
                  minLeadingWidth: 0,
                  leading: CircleAvatar(
                    radius: 14,
                    backgroundImage: AssetImage(_profileImages[mod]),
                  ),
                  title: greyText(_names[mod]),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 4),
                      mediumBoldText(_comments[mod]),
                      greyText('1/2 Reply'),
                      const SizedBox(height: 4),
                      greyText('View Replies(121)')
                    ],
                  ),
                  trailing: Column(
                    children: [
                      const Icon(Icons.favorite_border, size: 18, color: Colors.black45),
                      greyTextSmall('256'),
                    ],
                  )),
            ),
          ],
        );
      },
    );
  }

  Widget _buildBottom() {
    return SingleChildScrollView(
      reverse: true,
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: 50,
                padding: const EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(38.0),
                  ),
                  boxShadow: <BoxShadow>[
                    BoxShadow(color: Colors.black.withOpacity(0.3), offset: const Offset(0, 0), blurRadius: 2.0),
                  ],
                ),
                child: TextField(
                  onChanged: (String txt) {},
                  style: const TextStyle(fontSize: 18, color: Colors.white),
                  cursorColor: appColor,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.emoji_emotions_outlined, color: Colors.black45),
                      suffixIcon: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Icon(Icons.alternate_email, color: Colors.black45),
                          SizedBox(width: 16),
                          Icon(Icons.card_giftcard, color: Colors.black45),
                        ],
                      ),
                      border: InputBorder.none,
                      hintText: 'Add Comment..',
                      hintStyle: const TextStyle(color: Colors.black54, fontSize: 16)),
                ),
              ),
            ),
            const SizedBox(width: 8),
            GestureDetector(
              onTap: () {},
              child: const CircleAvatar(
                backgroundColor: appColor,
                radius: 22,
                child: Icon(Icons.send, color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
