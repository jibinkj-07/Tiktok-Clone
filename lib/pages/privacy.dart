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

class Privacy extends StatefulWidget {
  static const String id = 'Privacy';

  const Privacy({Key? key}) : super(key: key);

  @override
  _PrivacyState createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> with SingleTickerProviderStateMixin {
  bool isPrivate = true;
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
        Container(
            padding: const EdgeInsets.only(top: 10, left: 16, bottom: 16),
            child: greyBoldText('Discoverability')),
        ListTile(
          onTap: () {},
          title: mediumText('Private account'),
          subtitle: greyTextSmall(
              'With a private account, only users you approve can follow you and watch your videos. Your existing followers wont be affected.'),
          trailing: Switch(
            activeColor: appColor,
            value: isPrivate,
            onChanged: (value) {
              setState(() {
                isPrivate = value;
              });
            },
          ),
        ),
        ListTile(
          onTap: () {},
          title: mediumText('Suggest your account to others'),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: () {},
          title: mediumText('Sync contacts and Facebook friends'),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: () {},
          title: mediumText('Location services'),
          subtitle: greyTextSmall(
              'If location services are tumed on, We use your approximate device location to improve you this content and ads experience. If you turn off location services, this will continuee to estimate your approximate location based on your system carrier information ad IP address.'),
          trailing: const Icon(Icons.chevron_right),
        ),
        const Divider(thickness: 1, color: Colors.black12),
        Container(
            padding: const EdgeInsets.only(top: 10, left: 16),
            child: greyBoldText('Personalization and data')),
        ListTile(
          onTap: () {},
          title: mediumText('Ads personalization'),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: () {},
          minLeadingWidth: 0,
          title: mediumText('Download your data'),
          subtitle: greyTextSmall('Get a copy of your account data'),
          trailing: const Icon(Icons.chevron_right),
        ),
        const Divider(thickness: 1, color: Colors.black12),
        Container(
            padding: const EdgeInsets.only(top: 10, left: 16),
            child: greyBoldText('Safety')),
        ListTile(
          onTap: () {},
          minLeadingWidth: 0,
          leading: const Icon(Icons.download),
          title: mediumText('Downloads'),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: () {},
          minLeadingWidth: 0,
          leading: const Icon(Icons.mode_comment_outlined),
          title: mediumText('Comments'),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: () {},
          minLeadingWidth: 0,
          leading: const Icon(Icons.model_training_outlined),
          title: mediumText('Mentions and tags'),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: () {},
          minLeadingWidth: 0,
          leading: const Icon(Icons.format_list_bulleted),
          title: mediumText('Following'),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: () {},
          minLeadingWidth: 0,
          leading: const Icon(Icons.deblur_outlined),
          title: mediumText('Duet'),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: () {},
          minLeadingWidth: 0,
          leading: const Icon(Icons.settings_cell_sharp),
          title: mediumText('Stitch'),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: () {},
          minLeadingWidth: 0,
          leading: const Icon(Icons.videocam),
          title: mediumText('Liked videos'),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: () {},
          minLeadingWidth: 0,
          leading: const Icon(Icons.recommend),
          title: mediumText('Recommendation'),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: () {},
          minLeadingWidth: 0,
          leading: const Icon(Icons.message_outlined),
          title: mediumText('Direct messages'),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: () {},
          minLeadingWidth: 0,
          leading: const Icon(Icons.block),
          title: mediumText('Blocked accounts'),
          trailing: const Icon(Icons.chevron_right),
        ),
      ],
    );
  }
}
