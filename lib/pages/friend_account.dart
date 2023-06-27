/*
  Authors : flutter_ninja (Flutter Ninja)
  Website : https://codecanyon.net/user/flutter_ninja/
  App Name : Netflix Clone Template
  This App Template Source code is licensed as per the
  terms found in the Website https://codecanyon.net/licenses/standard/
  Copyright and Good Faith Purchasers © 2022-present flutter_ninja.
*/
import 'package:flutter/material.dart';
import 'package:tiktok/widget/popupmenu.dart';
import '../components/styles.dart';

class FriendAccount extends StatefulWidget {
  final String name;
  static const String id = 'FriendAccount';

  const FriendAccount({Key? key, required this.name}) : super(key: key);

  @override
  _FriendAccountState createState() => _FriendAccountState();
}

class _FriendAccountState extends State<FriendAccount> {
  TabController? _tabController;
  List<Item> photoList = <Item>[
    const Item('assets/images/31.png'),
    const Item('assets/images/32.png'),
    const Item('assets/images/33.png'),
    const Item('assets/images/34.png'),
    const Item('assets/images/25.png'),
    const Item('assets/images/26.png'),
    const Item('assets/images/27.png'),
    const Item('assets/images/28.png'),
    const Item('assets/images/29.png'),
    const Item('assets/images/30.png'),
    const Item('assets/images/31.png'),
    const Item('assets/images/32.png'),
    const Item('assets/images/33.png'),
    const Item('assets/images/34.png'),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              SliverAppBar(
                actions: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.calendar_today,
                        color: Colors.black,
                      )),
                  const popUpMenu()
                ],
                iconTheme: const IconThemeData(color: Colors.black),
                title: Text(widget.name, style: const TextStyle(color: Colors.black)),
                floating: true,
                pinned: true,
                snap: false,
                expandedHeight: 310.0,
                backgroundColor: Colors.white,
                bottom: TabBar(
                  unselectedLabelColor: Colors.black45,
                  labelColor: appColor,
                  controller: _tabController,
                  indicatorColor: appColor,
                  labelStyle: const TextStyle(fontFamily: 'medium', fontSize: 14),
                  unselectedLabelStyle: const TextStyle(fontFamily: 'medium', fontSize: 14),
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: const [
                    Tab(child: Icon(Icons.grid_view)),
                    Tab(child: Icon(Icons.favorite_border)),
                  ],
                ),
                flexibleSpace: FlexibleSpaceBar(
                    collapseMode: CollapseMode.pin,
                    background: Container(
                      color: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        children: [
                          const SizedBox(height: 80),
                          const CircleAvatar(
                            backgroundImage: AssetImage('assets/images/profile_2.jpg'),
                            radius: 42,
                          ),
                          const SizedBox(height: 8),
                          blackHeadingSmall(widget.name),
                          const SizedBox(height: 12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [boldText('120'), greyTextSmall('Following')],
                              ),
                              Column(
                                children: [boldText('23m'), greyTextSmall('Followers')],
                              ),
                              Column(
                                children: [boldText('12k'), greyTextSmall('Likes')],
                              )
                            ],
                          ),
                          const SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              OutlinedButton(
                                child:
                                    const Text("FOLLOW", style: TextStyle(color: Colors.black, fontFamily: 'medium')),
                                style: OutlinedButton.styleFrom(
                                  side: const BorderSide(color: Colors.black38, width: 1),
                                  backgroundColor: Colors.transparent,
                                  primary: Colors.black,
                                ),
                                onPressed: () {},
                              ),
                              const SizedBox(width: 8),
                              OutlinedButton(
                                child: const Icon(Icons.facebook_outlined),
                                style: OutlinedButton.styleFrom(
                                  side: const BorderSide(color: Colors.black38, width: 1),
                                  backgroundColor: Colors.transparent,
                                  primary: Colors.black,
                                ),
                                onPressed: () {},
                              ),
                              const SizedBox(width: 8),
                              OutlinedButton(
                                child: const Icon(Icons.bookmark_border_outlined),
                                style: OutlinedButton.styleFrom(
                                  side: const BorderSide(color: Colors.black38, width: 1),
                                  backgroundColor: Colors.transparent,
                                  primary: Colors.black,
                                ),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),
              ),
            ];
          },
          body: TabBarView(
            controller: _tabController,
            children: [
              SingleChildScrollView(child: gridProfile()),
              SingleChildScrollView(child: gridProfile()),
            ],
          ),
        ),
      ),
    );
  }

  Widget gridProfile() {
    return Container(
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
                children: [Image.asset(e.img, height: 128, fit: BoxFit.cover)],
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}

class Item {
  const Item(this.img);

  final String img;
}
