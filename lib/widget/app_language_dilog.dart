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

class AppLanguageDilog extends StatefulWidget {
  const AppLanguageDilog({Key? key}) : super(key: key);

  @override
  _AppLanguageDilogState createState() => _AppLanguageDilogState();
}

enum menuitem { item1, item2, item3 }

class _AppLanguageDilogState extends State<AppLanguageDilog> {
  menuitem? _mitem = menuitem.item1;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(left: 30, top: 16, bottom: 10),
            child: blackHeading('App Language'),
          ),
          ListTile(
            visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
            horizontalTitleGap: 0,
            leading: Radio<menuitem>(
              activeColor: appColor,
              value: menuitem.item1,
              groupValue: _mitem,
              onChanged: (menuitem? value) {
                setState(() {
                  _mitem = value;
                });
              },
            ),
            title: mediumText('Phones language(English)'),
          ),
          ListTile(
            visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
            horizontalTitleGap: 0,
            leading: Radio<menuitem>(
              activeColor: appColor,
              value: menuitem.item2,
              groupValue: _mitem,
              onChanged: (menuitem? value) {
                setState(() {
                  _mitem = value;
                });
              },
            ),
            title: mediumText('Hindi'),
          ),
          ListTile(
            visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
            horizontalTitleGap: 0,
            leading: Radio<menuitem>(
              activeColor: appColor,
              value: menuitem.item3,
              groupValue: _mitem,
              onChanged: (menuitem? value) {
                setState(() {
                  _mitem = value;
                });
              },
            ),
            title: mediumText('Gujarati'),
          ),
          const SizedBox(height: 8)
        ],
      ),
    );
  }
}
