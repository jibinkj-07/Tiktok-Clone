/*
  Authors : flutter_ninja (Flutter Ninja)
  Website : https://codecanyon.net/user/flutter_ninja/
  App Name : Netflix Clone Template
  This App Template Source code is licensed as per the
  terms found in the Website https://codecanyon.net/licenses/standard/
  Copyright and Good Faith Purchasers © 2022-present flutter_ninja.
*/
import 'package:flutter/material.dart';

const appColor = Color(0xFFfe2c55);
const appColor2 = Color(0xFFffabbb);
// const chatColor = Color(0xFF5D8DD5);

const backgroundColor = Color.fromARGB(255, 243, 243, 243);

welcomeHeading(val) {
  return Text(
    val,
    style: const TextStyle(fontSize: 34, fontFamily: 'bold'),
  );
}

loginkHeading(val) {
  return Text(
    val,
    style: const TextStyle(fontSize: 18, fontFamily: 'medium', color: appColor),
  );
}

blackHeading(val) {
  return Text(
    val,
    style:
        const TextStyle(fontSize: 18, fontFamily: 'bold', color: Colors.black),
  );
}

blackHeadingSmall(val) {
  return Text(
    val,
    style: const TextStyle(
        fontSize: 16, fontFamily: 'medium', color: Colors.black),
  );
}

blackText(val) {
  return Text(
    val,
    style: const TextStyle(fontSize: 14, color: Colors.black),
  );
}

boldText(val) {
  return Text(
    val,
    style:
        const TextStyle(fontSize: 14, color: Colors.black, fontFamily: 'bold'),
  );
}

mediumBoldText(val) {
  return Text(
    val,
    style: const TextStyle(
        fontSize: 14, color: Colors.black, fontFamily: 'medium'),
  );
}

smallText(val) {
  return Text(
    val,
    style: const TextStyle(fontSize: 11, color: Colors.black45),
  );
}

mediumText(val) {
  return Text(
    val,
    style: const TextStyle(
      fontSize: 16,
      color: Colors.black,
    ),
  );
}

appbarTitle(val) {
  return Text(
    val,
    style: const TextStyle(
        fontFamily: 'medium', color: Colors.white, fontSize: 18),
  );
}

greyBoldText(val) {
  return Text(
    val,
    style: const TextStyle(
        fontSize: 14, fontFamily: 'medium', color: Colors.black54),
  );
}

greyText(val) {
  return Text(
    val,
    style: const TextStyle(fontSize: 14, color: Colors.black54),
  );
}

greyTextSmall(val) {
  return Text(
    val,
    style: const TextStyle(fontSize: 12, color: Colors.black54),
  );
}

appcolorText(val) {
  return Text(
    val,
    style: const TextStyle(fontSize: 12, color: appColor, fontFamily: 'bold'),
  );
}

textField(hint) {
  return TextField(
    keyboardType: TextInputType.number,
    decoration: InputDecoration(
      hintText: hint,
      labelStyle: const TextStyle(color: Colors.black54, fontSize: 12),
      enabledBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.black26),
      ),
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: appColor),
      ),
    ),
  );
}
