import 'package:flutter/material.dart';
import 'package:monami/core/constant/colorApp.dart';

ThemeData themeEnglish = ThemeData(
  textTheme: const TextTheme(
      // ignore: deprecated_member_use
      headline1: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 20, color: AppColor.black),
      // ignore: deprecated_member_use
      headline2: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 20, color: AppColor.black),
      // ignore: deprecated_member_use
      bodyText1: TextStyle(height: 2, color: AppColor.grey, fontSize: 14)),
  primarySwatch: Colors.blue,
);
ThemeData themeArabic = ThemeData(
  textTheme: const TextTheme(
      // ignore: deprecated_member_use
      headline1: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 20, color: AppColor.black),
      // ignore: deprecated_member_use
      headline2: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 20, color: AppColor.black),
      // ignore: deprecated_member_use
      bodyText1: TextStyle(height: 2, color: AppColor.grey, fontSize: 14)),
  primarySwatch: Colors.blue,
);