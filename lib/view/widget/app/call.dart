// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:monami/controller/users/auth/Login_controller.dart';
// import 'package:monami/data/model/usersmodel.dart';
// import 'package:monami/view/widget/app/content.dart';
// import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';



// class MyCall1 extends GetView<LogincontrollerImp> {
//   const MyCall1({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 140,
//       child: ListView.builder(
//           itemCount: controller.data.length,
//           scrollDirection: Axis.horizontal,
//           itemBuilder: (context, i) {
//             return MyCall(
//                 usersmodel: usersModel.fromJson(controller.data[i]), callID: '1',);
//           }),
//     );
//   }
// }

// class MyCall extends StatelessWidget {

//   const MyCall({Key? key, required this.callID, required this.usersmodel,}) : super(key: key);
//   final String callID;
// final usersModel usersmodel;
//   @override
//   Widget build(BuildContext context) {
//     // ignore: unused_local_variable
//     LogincontrollerImp controller = Get.put(LogincontrollerImp());
//     return ZegoUIKitPrebuiltCall(
//       appID: MyConst
//        .appId, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
//       appSign: MyConst
//           .appSign, // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
//       // userID: usersmodel.id,
//       userName:usersmodel.usersName!,
//       callID:callID,
//       // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
//       config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()
//         ..onOnlySelfInRoom = (context) => Navigator.of(context).pop(),
//     );
//   }
// }
