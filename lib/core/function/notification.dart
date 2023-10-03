// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_ringtone_player/flutter_ringtone_player.dart';
// import 'package:get/get.dart';
// import 'package:monami/core/constant/colorApp.dart';
// // 
// RequestPremesionNotification() async {
//   // FirebaseMessaging messaging = FirebaseMessaging.instance;

//   // ignore: unused_local_variable
//   NotificationSettings settings = 
//       await FirebaseMessaging.instance.requestPermission(
//    alert: true,
//     announcement: false,
//     badge: true,
//     carPlay: false,
//     criticalAlert: false,
//     provisional: false,
//     sound: true,
//   );

// // print('User granted permission: ${settings.authorizationStatus}');
// }

// RNotificationSettings() {
//   FirebaseMessaging.onMessage.listen((message) {
//      print("================Notification==========");
//      print(message.notification!.title);
//      print(message.notification!.body);
//     FlutterRingtonePlayer.playNotification();
//     Get.snackbar(
//       message.notification!.title!,
//       icon: Icon(Icons.verified_outlined),
//       backgroundColor: AppColor.primaryColor,
//       message.notification!.body!,
//       colorText: Colors.white,
//     );
//   });
// }
