// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:monami/view/screen/edata/home/homepage.dart';
// import 'package:monami/view/screen/edata/home/msg.dart';
// import 'package:monami/view/screen/edata/home/profil.dart';
// import 'package:monami/view/screen/edata/home/search.dart';
// import 'package:monami/view/screen/myfavored.dart';
// import 'package:monami/view/screen/pdata/home/search.dart';

// abstract class HomeScreenController extends GetxController {
//   changePage(int currentpage);
// }

// class HomeScreenControllerImp extends HomeScreenController {
//   int currentpage = 0;

//   List<Widget> listPage = [
//      HomePage(),
//     search(),
//     // MyFavorite
//     msg(),
//   profile2_0(),
//   ];

//   List  bottomappbar = [
//     {"title": "home",  "icon" :  Icons.home} , 
//     {"title": "Search", "icon" :  Icons.search} , 
//     {"title": "Favorite", "icon" :  Icons.favorite} , 
//     {"title": "chats", "icon" :  Icons.chat} , 
//     {"title": "Profile", "icon" :  Icons.person} , 
//   ] ; 

//   @override
//   changePage(int i) {
//     currentpage = i;
//     update();
//   }
// }