/*
  Authors : flutter_ninja (Flutter Ninja)
  Website : https://codecanyon.net/user/flutter_ninja/
  App Name : Netflix Clone Template
  This App Template Source code is licensed as per the
  terms found in the Website https://codecanyon.net/licenses/standard/
  Copyright and Good Faith Purchasers © 2022-present flutter_ninja.
*/
import 'package:flutter/material.dart';
import '../components/styles.dart';

class AddMusic extends StatefulWidget {
  static const String id = 'AddMusic';

  const AddMusic({Key? key}) : super(key: key);

  @override
  _AddMusicState createState() => _AddMusicState();
}

class _AddMusicState extends State<AddMusic>
    with SingleTickerProviderStateMixin {
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
          title: const Text('Add Music', style: TextStyle(color: Colors.black)),
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        body: _buildBody());
  }

  Widget _buildBody() {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 15,
      itemBuilder: (context, i) => Column(
        children: <Widget>[
          ListTile(
              onTap: () {},
              leading: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/25.jpg'),
              ),
              title: boldText('Dance on Heaven'),
              subtitle: greyText('Maroon 5'),
              trailing: const Icon(Icons.play_arrow)),
        ],
      ),
    );
  }
}
