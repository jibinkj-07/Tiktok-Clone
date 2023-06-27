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

class Help extends StatefulWidget {
  static const String id = 'Help';

  const Help({Key? key}) : super(key: key);

  @override
  _HelpState createState() => _HelpState();
}

class _HelpState extends State<Help> with SingleTickerProviderStateMixin {
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
          title: const Text('Help', style: TextStyle(color: Colors.black)),
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
          Container(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: ListTile(
              onTap: () {},
              title: greyText('How to create account?'),
              subtitle: boldText(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin Magna velt, posures eu consequate id, fermentation in ex. Phasselus imperfect, ante sit apemr rhocus mattisa quarmi doolro.'),
            ),
          ),
        ],
      ),
    );
  }
}
