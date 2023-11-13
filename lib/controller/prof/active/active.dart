import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monami/core/class/statusrequest.dart';
import 'package:monami/core/function/handlingDatacontroller.dart';
import 'package:monami/core/services/services.dart';
import 'package:monami/data/datasource/remote/active/active.dart';
import 'package:monami/data/model/profModel.dart';
class activecontroller extends GetxController {

activeData activedata = activeData(Get.find());
MyServices myServices = Get.find();

List data = [];
late profModel profmodel;
late StatusRequest statusRequest;


bool  active = false;

Changeactive(val){
 active = active == false ? true : false;
   update();
}

  @override
  void onInit() {
    update();
    super.onInit();
  }

itsactive() async {
// data.clear();
    statusRequest = StatusRequest.loading;
    update();
    var response = await activedata.active(
        myServices.sharedPreferences.getString("id")!,);
    print("=============================== Controller $response");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        Get.rawSnackbar(
            title: "اشعار",
            messageText: const Text("ثم إضافة صديق المفضل بنجاح"),
            icon: Icon(Icons.favorite_border_outlined),
            backgroundColor: Colors.orange
            );
        // data.addAll(response['data']);
      } else { 
        statusRequest = StatusRequest.failute;
      }
      update();
      // End
    }

  }
  
    
itsinactive() async {
// data.clear();
    statusRequest = StatusRequest.loading;
    update();
    var response = await activedata.inactive(
        myServices.sharedPreferences.getString("id")!,);
    print("=============================== Controller $response");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        Get.rawSnackbar(
            title: "اشعار",
            messageText: const Text("ثم إضافة صديق المفضل بنجاح"),
            icon: Icon(Icons.favorite_border_outlined),
            backgroundColor: Colors.orange
            );
        // data.addAll(response['data']);
      } else { 
        statusRequest = StatusRequest.failute;
      }
      update();
      // End
    }
  }
}