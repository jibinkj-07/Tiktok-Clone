/*
  Authors : flutter_ninja (Flutter Ninja)
  Website : https://codecanyon.net/user/flutter_ninja/
  App Name : Netflix Clone Template
  This App Template Source code is licensed as per the
  terms found in the Website https://codecanyon.net/licenses/standard/
  Copyright and Good Faith Purchasers © 2022-present flutter_ninja.
*/
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tiktok/pages/post_filter.dart';

class TakePictureScreen extends StatefulWidget {
  const TakePictureScreen({Key? key}) : super(key: key);

  @override
  State<TakePictureScreen> createState() => _TakePictureScreenState();
}

class _TakePictureScreenState extends State<TakePictureScreen> {
  final ImagePicker _picker = ImagePicker();

  Future<void> _onImageButtonPressed() async {
    // ignore: unused_local_variable
    final XFile? pickedFile = await _picker.pickImage(
      source: ImageSource.camera,
    );
  }

  @override
  void initState() {
    super.initState();
    _onImageButtonPressed();
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
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 70),
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(
                    Icons.flash_on,
                    color: Colors.white,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PostFilter()));
                    },
                    child: const CircleAvatar(
                      radius: 28,
                      backgroundColor: Colors.red,
                      child: Icon(
                        Icons.videocam,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.repeat,
                    color: Colors.white,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
