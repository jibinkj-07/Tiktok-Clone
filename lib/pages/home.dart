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
import 'package:tiktok/pages/comments.dart';
import 'package:tiktok/pages/friend_account.dart';
import 'package:tiktok/widget/video_player.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var videos = [
    'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4',
    'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4',
    'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/Sintel.mp4',
    'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
    'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4'
  ];

  final List<String> _names = ['Jibin KJ', 'Mohan S', 'Devendiran', 'Kamal Rajeev', 'Aparna Mohan'];

  final List<String> _caption = [
    'Unlocking the power of storytelling through motion.',
    'This video takes you on a journey you won\'t want to miss.',
    'Creating memories, one frame at a time.',
    'Immerse yourself in the artistry of movement',
    'Press play and let the beauty unfold.'
  ];
  final List<String> _music = [
    'Shape of You" by Ed Sheeran',
    'Bohemian Rhapsody" by Queen',
    '"Hotel California" by Eagles',
    '"Hey Jude" by The Beatles',
    '"Rolling in the Deep" by Adele'
  ];

  final List<String> _profileImages = [
    'assets/images/profile_1.png',
    'assets/images/profile_2.jpg',
    'assets/images/profile_3.jpg',
    'assets/images/profile_4.jpg',
  ];

  final Map<double, double> _postInfo = {
    15.5: 10,
    4.5: 8,
    3.7: 5,
    7.2: 11,
    6.9: 4,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: PageView.builder(
          itemCount: videos.length,
          physics: const BouncingScrollPhysics(),
          controller: PageController(initialPage: 0, viewportFraction: 1),
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            final data = videos[index];
            return Stack(
              children: [
                VidePlayerItem(videoUrl: data),
                Column(
                  children: [
                    const SizedBox(height: 100),
                    Expanded(
                        child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.only(left: 16, bottom: 16),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => FriendAccount(name: _names[index])));
                                  },
                                  child: Text(
                                    _names[index],
                                    style:
                                        const TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  _caption[index],
                                  style: const TextStyle(fontSize: 15, color: Colors.white),
                                ),
                                const SizedBox(height: 8),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AddMusic()));
                                  },
                                  child: Row(
                                    children: [
                                      const Icon(Icons.music_note, size: 15, color: Colors.white),
                                      Text(
                                        _music[index],
                                        style: const TextStyle(fontSize: 15, color: Colors.white, fontFamily: 'medium'),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 100,
                          padding: const EdgeInsets.only(bottom: 16),
                          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height / 5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Column(
                                children: [
                                  InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => FriendAccount(name: _names[index])));
                                      },
                                      child: CircleAvatar(
                                          backgroundImage:
                                              AssetImage(index == 4 ? _profileImages[1] : _profileImages[index]))),
                                  const SizedBox(height: 10),
                                  InkWell(
                                    onTap: () {},
                                    child: const Icon(Icons.favorite, color: Colors.red),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    '${_postInfo.keys.toList()[index]}K',
                                    style: const TextStyle(fontSize: 14, color: Colors.white),
                                  ),
                                  const SizedBox(height: 16),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context, MaterialPageRoute(builder: (context) => const Comments()));
                                    },
                                    child: const Icon(Icons.mode_comment_outlined, color: Colors.white),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    '${_postInfo.values.toList()[index]}K',
                                    style: const TextStyle(fontSize: 14, color: Colors.white),
                                  ),
                                  const SizedBox(height: 16),
                                  InkWell(
                                    onTap: () {},
                                    child: const Icon(Icons.reply, color: Colors.white),
                                  ),
                                  Text(
                                    '${(_postInfo.keys.toList()[index] - 1.34).toStringAsFixed(1)}K',
                                    style: const TextStyle(fontSize: 14, color: Colors.white),
                                  ),
                                  const SizedBox(height: 16),
                                  InkWell(
                                    onTap: () {},
                                    child: const Icon(Icons.multitrack_audio, color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ))
                  ],
                )
              ],
            );
          },
        ));
  }
}
