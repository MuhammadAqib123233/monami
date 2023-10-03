// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:monami/controller/test_controller.dart';
// import 'package:monami/core/class/handlingDataview.dart';
// import 'package:monami/core/constant/colorApp.dart';

// class Testview extends StatelessWidget {
//   const Testview({super.key});

//   @override
//   Widget build(BuildContext context) {
//     Get.put(TestContoller());

//     return Scaffold(
//       appBar: AppBar(title: Text("test page"),
//       backgroundColor: AppColor.primaryColor,),
//       body: GetBuilder<TestContoller>(builder: (controller) {
//         return handlingDataView(
//              statusRequest: controller.statusRequest, widget: ListView.builder(
//               itemCount: controller.data.length,
//               itemBuilder: (context, index) {
//                 return Text('${controller.data}');
//               }),);

//       }),
//     );
//   }
// }
