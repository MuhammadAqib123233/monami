// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:get/get.dart';
// import 'package:monami/controller/homePage_controller.dart';
// import 'package:monami/core/constant/colorApp.dart';
// import 'package:monami/linkapi.dart';
// import 'package:monami/view/widget/cstmappbar.dart';

// class parlant extends StatelessWidget {
//  parlant({super.key, }) {
//  }
//   @override
//   Widget build(BuildContext context) {
//     Get.put(HomeControllerImp());

//     return Container(
//       height: 740,
//       child: ListView.builder(
//           scrollDirection: Axis.vertical,
//           itemCount: .items.length,
//           itemBuilder: (context, index) {
//             return GestureDetector(
//               onTap: () {
//                 // controller.goToPageProductDetails(listdatasearch[index]);
//               },
//               child: Container(
//                 child: Column(
//                   children: [
//                     Column(
//                       children: [
//                         Container(
//                           height: 60,
//                           // padding: EdgeInsets.symmetric(horizontal: 10),
//                           margin: EdgeInsets.only(top: 10),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Row(
//                                 children: [
//                                   Container(
//                                     height: 60,
//                                     width: 60,
//                                     decoration: BoxDecoration(
//                                         image: DecorationImage(
//                                             image: NetworkImage(
//                                               '${AppLink.imagesItems}/${controller.items[index]['items_image']}',
//                                             ),
//                                             fit: BoxFit.fill),
//                                         borderRadius: BorderRadius.only(
//                                           topLeft: Radius.circular(30.0),
//                                           bottomRight: Radius.circular(30.0),
//                                           topRight: Radius.circular(30.0),
//                                           bottomLeft: Radius.circular(30.0),
//                                         ),
//                                         border: Border.all(
//                                             color: AppColor.primaryColormonami,
//                                              width: 1)
//                                         ),
//                                   ),
//                                   SizedBox(
//                                     width: 20,
//                                   ),
//                                   Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Row(
//                                         children: [
//                                           Text(
//                                               '${controller.items[index]['items_name']}',
//                                               style: TextStyle(
//                                                 fontSize: 20,
//                                                 fontWeight: FontWeight.w600,
//                                                 color: AppColor.black,
//                                               )),

//                                           SizedBox(
//                                             width: 10,
//                                           ),
//                                           Container(
//                                             margin: EdgeInsets.only(top: 7),
//                                             child: CircleAvatar(
//                                               radius: 10,
//                                               backgroundImage: AssetImage(
//                                                   "images/brazil.png"),
//                                             ),
//                                           ),
                                       
//                                         ],
//                                       ),
//                                       SizedBox(
//                                         height: 3,
//                                       ),
//                                       Row(
//                                         children: [
//                                           Text('English'),
//                                         ],
//                                       ),
//                                     ],
//                                   )
//                                 ],
//                               ),
//                               Container(
//                                 height: 80,
//                                 child: Column(
//                                   children: [
//                                     Row(
//                                       children: [
//                                         IconButton(
//                                             icon: const Icon(
//                                               Icons.video_call_outlined,
//                                               color: Color(0xff0ACD69),
//                                             ),
//                                             onPressed: () {
//                                               Navigator.of(context)
//                                                   .pushNamed('att_call');
//                                             }),
//                                         // Text('followers'),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                     Divider(
//                       color: AppColor.primaryColormonami,
//                     )
//                   ],
//                 ),
//               ),
//             );
//           }),
//     );
//   }
// }
