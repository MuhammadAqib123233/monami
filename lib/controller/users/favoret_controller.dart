import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monami/core/class/statusrequest.dart';
import 'package:monami/core/function/handlingDatacontroller.dart';
import 'package:monami/core/services/services.dart';
import 'package:monami/data/datasource/remote/favorite_data.dart';
class Favoritecontroller extends GetxController {

FavoriteData favoriteData = FavoriteData(Get.find());
MyServices myServices = Get.find();

List data = [];

late StatusRequest statusRequest;

Map isFavorite = {};

  @override
  void onInit() {
    update();
    super.onInit();
  }

  setFavorite( id , val ){
    isFavorite[id] = val ;
    update();
  }

  addFavorite( profid) async {
 data.clear();
    statusRequest = StatusRequest.loading;
    update();
    var response = await favoriteData.addFavorite(
        myServices.sharedPreferences.getString("id")!, profid);
    print("=============================== Controller $response ");
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

  removeFavorite( profid) async {
    data.clear();
    statusRequest = StatusRequest.loading;
    var response = await favoriteData.removeFavorite(
        myServices.sharedPreferences.getString("id")!, profid);
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        Get.rawSnackbar(
            title: "اشعار",
            messageText: const Text("تم حذف المنتج من المفضلة "));
        // data.addAll(response['data']);
      } else {
        statusRequest = StatusRequest.failute;
      }
      update();
      // End
    }
  }
}
