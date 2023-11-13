import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monami/view/screen/users/home/homepage.dart';
import 'package:monami/view/screen/users/home/msg.dart';

abstract class HomeScreenprofController extends GetxController {
  changePage(int currentpage);
}

class HomeScreenprofControllerImp extends HomeScreenprofController {
  int currentpage = 0;

  List<Widget> listPage = [
     HomePage(),
    // search(),
    msg(),
  // profile2_0(),
  ];

  List  bottomappbar = [
    {"title": "home",  "icon" :  Icons.home} , 
    {"title": "Search", "icon" :  Icons.search} , 
    {"title": "chats", "icon" :  Icons.chat} , 
    {"title": "Profile", "icon" :  Icons.person} , 
];

  @override
  changePage(int i) {
    currentpage = i;
    update();
  }
}