// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:monami/controller/prof/home/homePage_controller.dart';
// import 'package:monami/core/constant/colorApp.dart';
// import 'package:monami/data/model/usersModel.dart';
// import 'package:monami/linkapi.dart';

// class ListlangfrusersHome extends GetView<HomeProfControllerImp> {
//   const ListlangfrusersHome({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 140,
//       child: ListView.builder(
//           itemCount: controller.langfr.length,
//           scrollDirection: Axis.horizontal,
//           itemBuilder: (context, i) {
//             return Listlangfr(
//                 usersmodel: usersModel.fromJson(controller.langfr[i]));
//           }),
//     );
//   }
// }


// class Listlangfr extends GetView<HomeProfControllerImp> {
//   final usersModel usersmodel;
//   const Listlangfr({super.key , required this.usersmodel});

//   @override
//   Widget build(BuildContext context) {
//  return InkWell(onTap: () {
//    controller.goToPageProductDetails(usersmodel);
//  },
  
//       child: Container(
//          padding: EdgeInsets.only(left: 15),
//         // margin: EdgeInsets.symmetric(vertical: 10),
//         height: 110,
     
//      child : Container(
//               // color: Colors.black,
//               width: 100,
//               height: 110,
//               child: Stack(
//                 children: [
//                   Container(
//                     width: 90,
//                     height: 100,
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                           image: NetworkImage(
//                             '${AppLink.imagesprof}/${usersmodel.usersImage}',
//                           ),
//                           fit: BoxFit.cover
//                           ),
//                       borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(16.0),
//                           bottomLeft: Radius.circular(16.0),
//                           topRight: Radius.circular(16.0),
//                           bottomRight: Radius.circular(16.0)),
//                     ),
//                   ),
//                   Positioned(
//                       top: 80,
//                       width: 90,
//                       child: Container(
//                         decoration: BoxDecoration(
//                           color:
//                               Color.fromARGB(255, 255, 255, 255).withOpacity(1),
//                           borderRadius: BorderRadius.only(
//                             bottomRight: Radius.circular(15.0),
//                             bottomLeft: Radius.circular(15.0),
//                           ),
//                           border: Border.all(width: 1, color: Colors.green),
//                         ),
//                         height: 20,
//                         child: Container(
//                           padding: EdgeInsets.symmetric(horizontal: 6),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Text('${usersmodel.usersName}',
//                                   style: TextStyle(
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.w600,
//                                     color: AppColor.black,
//                                   )),
//                               Container(
//                                 height: 12,
//                                 width: 12,
//                           margin: EdgeInsets.only(right: 5),
//                                    decoration: BoxDecoration(
//                                     image: DecorationImage(image:AssetImage("images/falg2.png"),
//                                     fit: BoxFit.cover
//                                     ),
//               borderRadius: BorderRadius.circular(40.0))
//                               )
//                             ],
//                           ),
//                         ),
//                       ))
//                 ],
//               ),
//             ),
//       )
      
//     );
//   }
// }
