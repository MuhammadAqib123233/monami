import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monami/core/class/statusrequest.dart';
import 'package:monami/core/function/handlingDatacontroller.dart';
import 'package:monami/core/services/services.dart';
import 'package:monami/data/datasource/remote/users/notification/notifusers.dart';

class SendNotificationcontroller extends GetxController {

late StatusRequest statusRequest;
  MyServices myServices = Get.find();

  sendnotificationData sendNotificationData = sendnotificationData(Get.find());

  List data = [];

  Map issend = {};

  @override
  void onInit() {
    update();
    super.onInit();
  }

  setsend(id, val) {
    issend[id] = val;
    update();
  }

  adddata(String profid) async {
// data.clear();
    statusRequest = StatusRequest.loading;
    update();
    var response = await sendNotificationData.senndData(
        myServices.sharedPreferences.getString("id")!, profid);
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
        data.addAll(response['data']);
      } else { 
        statusRequest = StatusRequest.failute;
      }
      update();
      // End
    }
  }
}