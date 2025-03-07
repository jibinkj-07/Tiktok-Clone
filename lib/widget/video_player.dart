/*
  Authors : flutter_ninja (Flutter Ninja)
  Website : https://codecanyon.net/user/flutter_ninja/
  App Name : Netflix Clone Template
  This App Template Source code is licensed as per the
  terms found in the Website https://codecanyon.net/licenses/standard/
  Copyright and Good Faith Purchasers © 2022-present flutter_ninja.
*/
import 'package:flutter/material.dart';
import 'package:tiktok/components/styles.dart';
import 'package:video_player/video_player.dart';

class VidePlayerItem extends StatefulWidget {
  final String videoUrl;

  const VidePlayerItem({Key? key, required this.videoUrl}) : super(key: key);

  @override
  State<VidePlayerItem> createState() => _VidePlayerItemState();
}

class _VidePlayerItemState extends State<VidePlayerItem> {
  late VideoPlayerController videoPlayerController;
  bool isPlaying = true;

  @override
  void initState() {
    super.initState();
    videoPlayerController = VideoPlayerController.network(widget.videoUrl)
      ..initialize().then((value) => {
            setState(() {
              videoPlayerController.play();
              videoPlayerController.setVolume(1);
            })
          });
  }

  @override
  void dispose() {
    super.dispose();
    videoPlayerController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        if (isPlaying) {
          videoPlayerController.pause();
        } else {
          videoPlayerController.play();
        }
        setState(() {
          isPlaying = !isPlaying;
        });
      },
      child: Container(
        width: size.width,
        height: size.height,
        decoration: const BoxDecoration(
          color: Colors.black,
        ),
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            VideoPlayer(videoPlayerController),
            if (!isPlaying)
              const CircleAvatar(
                  radius: 30.0, backgroundColor: appColor, child: Icon(Icons.pause, color: Colors.white, size: 40.0)),
          ],
        ),
      ),
    );
  }
}
