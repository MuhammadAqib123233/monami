

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monami/core/class/statusrequest.dart';
import 'package:monami/core/function/handlingDatacontroller.dart';
import 'package:monami/data/datasource/remote/homedata.dart';
import 'package:monami/data/model/profModel.dart';

abstract class SearchMixController extends GetxController {
  checkSearch(val);
searchData();
onSearchItems();
}
class SearchMixControllerImp extends SearchMixController {
  
  List<profModel> listdata = [];
  profModel? profmodel ;
  List prof = [];


  late StatusRequest statusRequest;
  HomeData homedata = HomeData(Get.find());

  searchData() async {
    statusRequest = StatusRequest.loading;
    var response = await homedata.searchData(search!.text);
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        prof.addAll(response['prof']);
        listdata.clear();
        List responsedata = response['data'];
        listdata.addAll(responsedata.map((e) => profModel.fromJson(e)));
      } else {
        statusRequest = StatusRequest.failute;
      }
    }
    update();
  }

  bool isSearch = false;
  TextEditingController? search;

 checkSearch(val) {
    if (val == "") {
      statusRequest = StatusRequest.none;
      isSearch = false;
    }
    update();
  }


  
  onSearchItems() {
    isSearch = true;
    searchData();
    update();
  }
}