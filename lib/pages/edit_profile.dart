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

class EditProfile extends StatefulWidget {
  static const String id = 'EditProfile';

  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile>
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
          title:
              const Text('Edit profile', style: TextStyle(color: Colors.black)),
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        body: _buildBody());
  }

  Widget _buildBody() {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(24),
          child: Stack(
            children: const <Widget>[
              CircleAvatar(
                radius: 64,
                backgroundImage: AssetImage("assets/images/27.jpg"),
              ),
              Positioned(
                  bottom: 0.0,
                  right: 0.0,
                  child: CircleAvatar(
                    backgroundColor: appColor,
                    radius: 18,
                    child:
                        Icon(Icons.camera_alt, color: Colors.white, size: 20),
                  ))
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.person),
                minLeadingWidth: 0,
                title: Container(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      greyTextSmall('Name'),
                      mediumText('Viv Richard')
                    ],
                  ),
                ),
                trailing: const Icon(Icons.edit, color: appColor, size: 18),
              ),
              ListTile(
                onTap: () {},
                leading: const SizedBox(
                    height: double.infinity, child: Icon(Icons.info_outline)),
                minLeadingWidth: 0,
                title: greyTextSmall('Bio'),
                trailing: const Icon(Icons.edit, color: appColor, size: 18),
                subtitle: mediumText('Faith and patience'),
              ),
              ListTile(
                onTap: () {},
                leading: const SizedBox(
                    height: double.infinity,
                    child: Icon(Icons.alternate_email)),
                minLeadingWidth: 0,
                title: greyTextSmall('Username'),
                trailing: const Icon(Icons.edit, color: appColor, size: 18),
                subtitle: mediumText('qwertyui'),
              ),
              ListTile(
                onTap: () {},
                leading: const SizedBox(
                    height: double.infinity, child: Icon(Icons.category)),
                minLeadingWidth: 0,
                title: greyTextSmall('Category'),
                trailing: const Icon(Icons.edit, color: appColor, size: 18),
                subtitle: mediumText('Entertainment'),
              ),
              ListTile(
                onTap: () {},
                leading: const SizedBox(
                    height: double.infinity, child: Icon(Icons.call)),
                minLeadingWidth: 0,
                title: greyTextSmall('Phone'),
                subtitle: mediumText('+91 9876 543 210'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
