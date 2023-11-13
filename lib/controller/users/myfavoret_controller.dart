import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monami/core/class/statusrequest.dart';
import 'package:monami/core/constant/routes.dart';
import 'package:monami/core/function/handlingDatacontroller.dart';
import 'package:monami/core/services/services.dart';
import 'package:monami/data/datasource/remote/myfavorite_data.dart';
import 'package:monami/data/model/myfavorite.dart';

class MyFavoritecontroller extends GetxController {
  @override
  void onInit() {
    getData();
    update();
    super.onInit();
  }

  MyFavoriteData myfavoriteData = MyFavoriteData(Get.find());
  MyServices myServices = Get.find();

  List<myfavoriteModel> data = [];

  bool isactive = true;

  late StatusRequest statusRequest;

  getData() async {
     data.clear();
    statusRequest = StatusRequest.loading;
    update();
    var response = await myfavoriteData.getData(
      myServices.sharedPreferences.getString("id")!,
    );
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        List responsedata = response['data'];
        data.addAll(responsedata.map((e) => myfavoriteModel.fromJson(e)));
      } else {
        statusRequest = StatusRequest.failute;
      }
    }
    update();
  }

  deletFromFavorite( favorieid) {
    // ignore: unused_local_variable
    var response = myfavoriteData.Deletfromfavorite(favorieid);
    data.removeWhere((element) => element.favorieId == favorieid); 
    Get.rawSnackbar(
        title: "اشعار", messageText: const Text("تم حذف المنتج من المفضلة "));
    update();
  }

  gotoprofile2_0(myfavoritemodel) {
    statusRequest = StatusRequest.loading;
    Get.toNamed(AppRoutes.ProducteDetailsFav,
        arguments: {"myfavoriteModel": myfavoritemodel});
  }
}
