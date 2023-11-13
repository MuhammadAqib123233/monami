// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:monami/controller/users/productdetails_cont.dart';
// import 'package:monami/core/constant/colorApp.dart';

// class SubitemsList extends GetView<ProductDetailsControllerImp> {
//   const SubitemsList({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         ...List.generate(
//           controller.subitems.length,
//           (index) => Container(
//             // padding: EdgeInsets.only(right: 15),
//             margin: EdgeInsets.only(right: 15),
//             alignment: Alignment.center,
//             height: 30,
//             width: 30,
//             decoration: BoxDecoration(
//                 color: controller.subitems[index]['active'] == "1"
//                     ? AppColor.primaryColor
//                     : Colors.white,

//                 border: Border.all(color: AppColor.primaryColor),
//                 borderRadius: BorderRadius.circular(10)),
//             child: Text(controller.subitems[index]['name'],
//                 style: TextStyle(
//                     color: controller.subitems[index]['active'] == "1"
//                         ? Colors.white
//                         : AppColor.primaryColor,
//                     fontWeight: FontWeight.bold)),
//           ),
//         )
//       ],
//     );
//   }
// }