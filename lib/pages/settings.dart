/*
  Authors : flutter_ninja (Flutter Ninja)
  Website : https://codecanyon.net/user/flutter_ninja/
  App Name : Netflix Clone Template
  This App Template Source code is licensed as per the
  terms found in the Website https://codecanyon.net/licenses/standard/
  Copyright and Good Faith Purchasers © 2022-present flutter_ninja.
*/
import 'package:flutter/material.dart';
import 'package:tiktok/widget/app_language_dilog.dart';
import '../components/styles.dart';

class Settings extends StatefulWidget {
  static const String id = 'Settings';

  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings>
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
          elevation: 2,
          titleSpacing: 0,
          backgroundColor: Colors.white,
          title: const Text('Settings and privacy',
              style: TextStyle(color: Colors.black)),
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        body: _buildBody());
  }

  Widget _buildBody() {
    return ListView(
      children: [
        ListTile(
          onTap: () {
            showDialog(
                context: context,
                builder: (BuildContext context) => const AppLanguageDilog());
          },
          minLeadingWidth: 0,
          leading: const Icon(Icons.language),
          title: mediumText('Change Language'),
        ),
        ListTile(
          onTap: () {},
          minLeadingWidth: 0,
          leading: const Icon(Icons.content_copy),
          title: mediumText('Content prefferences'),
        ),
        ListTile(
          onTap: () {},
          minLeadingWidth: 0,
          leading: const Icon(Icons.ads_click),
          title: mediumText('Ads'),
        ),
        ListTile(
          onTap: () {},
          minLeadingWidth: 0,
          leading: const Icon(Icons.wallpaper_outlined),
          title: mediumText('Digital Wellbeing'),
        ),
        ListTile(
          onTap: () {},
          minLeadingWidth: 0,
          leading: const Icon(Icons.family_restroom),
          title: mediumText('Family Pairing'),
        ),
        ListTile(
          onTap: () {},
          minLeadingWidth: 0,
          leading: const Icon(Icons.accessibility),
          title: mediumText('Accessibility'),
        ),
        const Divider(thickness: 1, color: Colors.black12),
        Container(
            padding: const EdgeInsets.only(top: 10, left: 16),
            child: greyBoldText('Cache & Cellular Data')),
        ListTile(
          onTap: () {},
          minLeadingWidth: 0,
          leading: const Icon(Icons.space_bar),
          title: mediumText('Free up space'),
        ),
        ListTile(
          onTap: () {},
          minLeadingWidth: 0,
          leading: const Icon(Icons.data_saver_off),
          title: mediumText('Data Saver'),
        ),
        ListTile(
          onTap: () {},
          minLeadingWidth: 0,
          leading: const Icon(Icons.wallpaper),
          title: mediumText('Wallpaper'),
        ),
        const Divider(thickness: 1, color: Colors.black12),
        Container(
            padding: const EdgeInsets.only(top: 10, left: 16),
            child: greyBoldText('Support')),
        ListTile(
          onTap: () {},
          minLeadingWidth: 0,
          leading: const Icon(Icons.report),
          title: mediumText('Report a Problem'),
        ),
        ListTile(
          onTap: () {},
          minLeadingWidth: 0,
          leading: const Icon(Icons.help),
          title: mediumText('Help Center'),
        ),
        ListTile(
          onTap: () {},
          minLeadingWidth: 0,
          leading: const Icon(Icons.security),
          title: mediumText('Safety Center'),
        ),
        Container(
            padding: const EdgeInsets.only(top: 10, left: 16),
            child: greyBoldText('About')),
        ListTile(
          onTap: () {},
          minLeadingWidth: 0,
          leading: const Icon(Icons.pages),
          title: mediumText('Community Guidelines'),
        ),
        ListTile(
          onTap: () {},
          minLeadingWidth: 0,
          leading: const Icon(Icons.usb_rounded),
          title: mediumText('Terms of Service'),
        ),
        ListTile(
          onTap: () {},
          minLeadingWidth: 0,
          leading: const Icon(Icons.copyright),
          title: mediumText('Copyright Policy'),
        ),
        Container(
            padding: const EdgeInsets.only(top: 10, left: 16),
            child: greyBoldText('Login')),
        ListTile(
          onTap: () {},
          minLeadingWidth: 0,
          leading: const Icon(Icons.switch_account),
          title: mediumText('Switch account'),
        ),
        ListTile(
          onTap: () {},
          minLeadingWidth: 0,
          leading: const Icon(Icons.logout),
          title: mediumText('Log out'),
        ),
      ],
    );
  }
}
