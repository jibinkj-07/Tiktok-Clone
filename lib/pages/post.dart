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

class PostCreate extends StatefulWidget {
  static const String id = 'PostCreate';

  const PostCreate({Key? key}) : super(key: key);

  @override
  _PostCreateState createState() => _PostCreateState();
}

class _PostCreateState extends State<PostCreate>
    with SingleTickerProviderStateMixin {
  bool isSwitched = false;
  List<Item> photoList = <Item>[
    const Item('assets/images/32.jpg'),
    const Item('assets/images/31.jpg'),
    const Item('assets/images/34.jpg'),
    const Item('assets/images/33.jpg'),
    const Item('assets/images/29.jpg'),
    const Item('assets/images/30.jpg'),
    const Item('assets/images/28.jpg'),
    const Item('assets/images/27.jpg'),
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: _buildBottomNav(),
        appBar: AppBar(
          elevation: 2,
          titleSpacing: 0,
          backgroundColor: Colors.white,
          title:
              const Text('Create Post', style: TextStyle(color: Colors.black)),
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'Descrive your video..',
                      labelStyle:
                          TextStyle(color: Colors.black54, fontSize: 12),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: appColor),
                      ),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  padding: const EdgeInsets.only(left: 16),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: photoList.map((e) {
                      return _buildPhoto(context, e);
                    }).toList(),
                  ),
                ),
                const SizedBox(height: 30),
                ListTile(
                    leading: blackHeadingSmall('Comment off'),
                    trailing: Switch(
                        value: isSwitched,
                        onChanged: (value) {
                          setState(() {
                            isSwitched = value;
                          });
                        })),
                ListTile(
                    leading: blackHeadingSmall('Save to gallery'),
                    trailing: Switch(
                        value: isSwitched,
                        onChanged: (value) {
                          setState(() {
                            isSwitched = value;
                          });
                        }))
              ],
            ),
          ),
        ));
  }

  Widget _buildPhoto(context, e) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 80,
        width: 80,
        margin: const EdgeInsets.only(right: 6),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(6)),
          image:
              DecorationImage(image: AssetImage(e.img), fit: BoxFit.fitHeight),
        ),
      ),
    );
  }

  Widget _buildBottomNav() {
    return GestureDetector(
      onTap: () {},
      child: Container(
          padding: const EdgeInsets.all(16),
          child: MyElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TabsExample()));
              },
              text: 'Post Video',
              colors: appColor,
              height: 42,
              width: double.infinity)),
    );
  }
}

class Item {
  const Item(this.img);
  final String img;
}
