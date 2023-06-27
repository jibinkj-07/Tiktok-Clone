/*
  Authors : flutter_ninja (Flutter Ninja)
  Website : https://codecanyon.net/user/flutter_ninja/
  App Name : Netflix Clone Template
  This App Template Source code is licensed as per the
  terms found in the Website https://codecanyon.net/licenses/standard/
  Copyright and Good Faith Purchasers © 2022-present flutter_ninja.
*/
import 'package:flutter/material.dart';
import 'package:tiktok/pages/categories.dart';
import 'package:tiktok/pages/home.dart';
import 'package:tiktok/widget/text_btn.dart';
import '../components/styles.dart';

class Search extends StatefulWidget {
  static const String id = 'Search';

  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<Story> storyList = <Story>[
    const Story('assets/images/profile_1.png', 'Kavin'),
    const Story('assets/images/profile_2.jpg', 'Prem'),
    const Story('assets/images/profile_3.jpg', 'Arya'),
    const Story('assets/images/profile_4.jpg', 'Sansa'),
    const Story('assets/images/profile_5.jpg', 'Koushik'),
    const Story('assets/images/profile_6.jpg', 'Aneesh'),
    const Story('assets/images/26.png', 'Ryne'),
    const Story('assets/images/27.png', 'Hojo'),
    const Story('assets/images/28.png', 'Frodo'),
    const Story('assets/images/29.png', 'Samual'),
  ];

  List<Item> photoList = <Item>[
    const Item('assets/images/32.png'),
    const Item('assets/images/31.png'),
    const Item('assets/images/34.png'),
    const Item('assets/images/33.png'),
    const Item('assets/images/29.png'),
    const Item('assets/images/30.png'),
    const Item('assets/images/28.png'),
    const Item('assets/images/27.png'),
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
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.qr_code)),
          ],
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          toolbarHeight: 70,
          iconTheme: const IconThemeData(color: Colors.black54),
          elevation: 0,
          title: searchBox(),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                titalClass('Technology in Data Science', 'Trending Techno'),
                SingleChildScrollView(
                  padding: const EdgeInsets.only(left: 16),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: storyList.map((e) {
                      return _buildStories(context, e);
                    }).toList(),
                  ),
                ),
                const SizedBox(height: 12),
                titalClass('Flutter Devloper to the moon', 'Flutter Sound'),
                SingleChildScrollView(
                  padding: const EdgeInsets.only(left: 16),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: photoList.map((e) {
                      return _buildPhoto(context, e);
                    }).toList(),
                  ),
                ),
                const SizedBox(height: 12),
                titalClass(' the moon', 'Trending Sound'),
                SingleChildScrollView(
                  padding: const EdgeInsets.only(left: 16),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: photoList.map((e) {
                      return _buildPhoto(context, e);
                    }).toList(),
                  ),
                ),
                const SizedBox(height: 12),
                titalClass('Beauty in the best', 'Trending Beauties'),
                SingleChildScrollView(
                  padding: const EdgeInsets.only(left: 16),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: photoList.map((e) {
                      return _buildPhoto(context, e);
                    }).toList(),
                  ),
                ),
                const SizedBox(height: 12),
                titalClass('Fashions in the bist', 'Fashion Market'),
                SingleChildScrollView(
                  padding: const EdgeInsets.only(left: 16),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: photoList.map((e) {
                      return _buildVideos(context, e);
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  titalClass(title, txt) {
    return ListTile(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Categories()));
        },
        leading: const SizedBox(
            height: double.infinity, child: Icon(Icons.music_note_rounded)),
        minLeadingWidth: 0,
        title: blackHeadingSmall(title),
        subtitle: greyText(txt),
        trailing: MyTextButton(
            onPressed: () {}, text: '64.2B', colors: Colors.black45));
  }

  Widget _buildStories(context, e) {
    return GestureDetector(
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(right: 10, top: 8, bottom: 10),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 28,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(e.img),
                    radius: 26,
                  ),
                ),
                greyTextSmall(e.name)
              ],
            ),
          ),
          Positioned(
              top: 16,
              right: 10,
              child: Container(
                width: 10,
                height: 10,
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(100),
                    ),
                    border: Border.all(width: 1, color: Colors.white)),
              )),
        ],
      ),
    );
  }

  Widget _buildPhoto(context, e) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Home()));
      },
      child: Container(
        height: 120,
        width: 100,
        margin: const EdgeInsets.only(right: 6),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(0)),
          image:
              DecorationImage(image: AssetImage(e.img), fit: BoxFit.fitHeight),
        ),
      ),
    );
  }

  Widget _buildVideos(context, e) {
    return GestureDetector(
      child: Container(
        margin: const EdgeInsets.only(right: 6),
        height: 170,
        width: 250,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(0)),
          image: DecorationImage(
            image: AssetImage(e.img),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: <Widget>[
            const Positioned(
              top: 10,
              right: 10,
              child: Text('04:12',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  )),
            ),
            Positioned(
              bottom: 10,
              left: 10,
              child: Row(
                children: const [
                  Icon(Icons.remove_red_eye, color: Colors.white, size: 14),
                  SizedBox(width: 6),
                  Text('34k views',
                      style: TextStyle(fontSize: 10, color: Colors.white)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  searchBox() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: const BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(30))),
      child: TextField(
        onChanged: (String txt) {},
        style: const TextStyle(
          fontSize: 14,
        ),
        cursorColor: appColor,
        decoration: const InputDecoration(
          border: InputBorder.none,
          hintText: 'Search',
          hintStyle: TextStyle(color: Colors.black38, fontSize: 14),
          suffixIcon: Icon(
            Icons.search,
            color: Colors.black45,
          ),
        ),
      ),
    );
  }
}

class Item {
  const Item(this.img);
  final String img;
}

class Story {
  const Story(this.img, this.name);
  final String img;
  final String name;
}
