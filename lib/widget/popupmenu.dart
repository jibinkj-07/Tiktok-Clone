/*
  Authors : flutter_ninja (Flutter Ninja)
  Website : https://codecanyon.net/user/flutter_ninja/
  App Name : Netflix Clone Template
  This App Template Source code is licensed as per the
  terms found in the Website https://codecanyon.net/licenses/standard/
  Copyright and Good Faith Purchasers © 2022-present flutter_ninja.
*/
import 'package:flutter/material.dart';
import 'package:tiktok/pages/help.dart';
import 'package:tiktok/pages/privacy.dart';
import 'package:tiktok/pages/profile.dart';
import 'package:tiktok/pages/settings.dart';
import 'package:tiktok/pages/terms_uses.dart';
import 'package:tiktok/widget/app_language_dilog.dart';

// ignore: camel_case_types
class popUpMenu extends StatelessWidget {
  const popUpMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: const Icon(Icons.more_vert),
      itemBuilder: (BuildContext context) => <PopupMenuEntry>[
        PopupMenuItem(
            child: const Text('Setting'),
            onTap: () => Future(
                  () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const Settings()),
                  ),
                )),
        PopupMenuItem(
            child: const Text('Privacy'),
            onTap: () => Future(
                  () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const Privacy()),
                  ),
                )),
        PopupMenuItem(
            child: const Text('Language'),
            onTap: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) => const AppLanguageDilog());
            }),
        PopupMenuItem(
            child: const Text('Terms of use'),
            onTap: () => Future(
                  () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const TermsOfUse()),
                  ),
                )),
        PopupMenuItem(
            child: const Text('Help'),
            onTap: () => Future(
                  () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const Help()),
                  ),
                )),
        PopupMenuItem(
            child: const Text('Share profile'),
            onTap: () => Future(
                  () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const MyProfile()),
                  ),
                )),
      ],
    );
  }
}
