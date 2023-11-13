// import 'package:get/get.dart';
// import 'package:monami/core/class/statusrequest.dart';
// import 'package:monami/core/function/handlingDatacontroller.dart';
// import 'package:monami/data/datasource/remote/test_data.dart';

// class TestContoller extends GetxController {
//   TestData testData = TestData(Get.find());

//   List data = [];

//   late StatusRequest statusRequest;

//   getData() async {
//     statusRequest = StatusRequest.loading;
//     var response = await testData.getData();
//     statusRequest = handlingData(response);
//     if (StatusRequest.success == statusRequest) {
      
//         data.addAll(response['data']);
//       } else {
//         statusRequest = StatusRequest.failute;
      
//     }
//     update();
//   }

//   @override
//   void onInit() {
//     getData();
//     super.onInit();
//   }
// }
