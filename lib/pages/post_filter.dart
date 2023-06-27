/*
  Authors : flutter_ninja (Flutter Ninja)
  Website : https://codecanyon.net/user/flutter_ninja/
  App Name : Netflix Clone Template
  This App Template Source code is licensed as per the
  terms found in the Website https://codecanyon.net/licenses/standard/
  Copyright and Good Faith Purchasers © 2022-present flutter_ninja.
*/
import 'package:flutter/material.dart';
import 'package:tiktok/pages/add_music.dart';
import 'package:tiktok/pages/post.dart';
import '../components/styles.dart';

class PostFilter extends StatefulWidget {
  static const String id = 'PostFilter';

  const PostFilter({Key? key}) : super(key: key);

  @override
  _PostFilterState createState() => _PostFilterState();
}

class _PostFilterState extends State<PostFilter>
    with SingleTickerProviderStateMixin {
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
      backgroundColor: Colors.transparent,
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/29.jpg"), fit: BoxFit.cover),
        ),
        child: SizedBox(
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SingleChildScrollView(
                padding: const EdgeInsets.only(left: 16),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: photoList.map((e) {
                    return _buildPhoto(context, e);
                  }).toList(),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AddMusic()));
                      },
                      child: Row(
                        children: const [
                          Icon(
                            Icons.music_note,
                            size: 15,
                            color: Colors.white,
                          ),
                          Text(
                            'Add music',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontFamily: 'medium'),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      // width: width,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const PostCreate()));
                        },
                        style: ElevatedButton.styleFrom(
                          primary: appColor,
                          onPrimary: Colors.white,
                          shadowColor: appColor,
                          elevation: 3,
                          shape: (RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          )),
                        ),
                        child: const Text(
                          'Next',
                          style: TextStyle(fontFamily: 'bold'),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
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
}

class Item {
  const Item(this.img);
  final String img;
}
