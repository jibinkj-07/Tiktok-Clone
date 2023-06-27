/*
  Authors : flutter_ninja (Flutter Ninja)
  Website : https://codecanyon.net/user/flutter_ninja/
  App Name : Netflix Clone Template
  This App Template Source code is licensed as per the
  terms found in the Website https://codecanyon.net/licenses/standard/
  Copyright and Good Faith Purchasers © 2022-present flutter_ninja.
*/
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  static const String id = 'Categories';

  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories>
    with SingleTickerProviderStateMixin {
  List<Item> photoList = <Item>[
    const Item('assets/images/31.jpg'),
    const Item('assets/images/32.jpg'),
    const Item('assets/images/33.jpg'),
    const Item('assets/images/34.jpg'),
    const Item('assets/images/25.jpg'),
    const Item('assets/images/26.jpg'),
    const Item('assets/images/27.jpg'),
    const Item('assets/images/28.jpg'),
    const Item('assets/images/29.jpg'),
    const Item('assets/images/30.jpg'),
    const Item('assets/images/31.jpg'),
    const Item('assets/images/32.jpg'),
    const Item('assets/images/33.jpg'),
    const Item('assets/images/34.jpg'),
    const Item('assets/images/27.jpg'),
    const Item('assets/images/28.jpg'),
    const Item('assets/images/29.jpg'),
    const Item('assets/images/30.jpg'),
    const Item('assets/images/31.jpg'),
    const Item('assets/images/32.jpg'),
    const Item('assets/images/33.jpg'),
    const Item('assets/images/34.jpg'),
  ];
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
          title: const Text('Categories Name here',
              style: TextStyle(color: Colors.black)),
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        body: gridProfile());
  }

  Widget gridProfile() {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GridView.count(
              crossAxisCount: 3,
              mainAxisSpacing: 3,
              crossAxisSpacing: 3,
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              children: photoList.map((e) {
                return Wrap(
                  children: [
                    Image.asset(e.img, height: 128, fit: BoxFit.cover)
                  ],
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}

class Item {
  const Item(this.img);
  final String img;
}
