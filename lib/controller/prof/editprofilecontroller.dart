import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:monami/controller/prof/viewprofilecontroller.dart';
import 'package:monami/core/class/statusrequest.dart';
import 'package:monami/core/constant/routes.dart';
import 'package:monami/core/function/handlingDatacontroller.dart';
import 'package:monami/core/function/uplaodfile.dart';
import 'package:monami/core/services/services.dart';
import 'package:monami/data/datasource/remote/prof/profdataedit.dart';
import 'package:monami/data/model/profModel.dart';






abstract class profeditprofilecontroller extends GetxController {
  editedata();
}

class profeditprofilecontrollerImp extends profeditprofilecontroller {
       GlobalKey<FormState> formstate = GlobalKey<FormState>();

  MyServices myServices = Get.find();
  
  // List<SelectedListItem> dropdownList = [];


  late TextEditingController username;
  late TextEditingController age;
  late TextEditingController desc;
  late TextEditingController cuntry;
  late TextEditingController catname;
  late TextEditingController cadid;

  // String? username;
  // String? id;

   profModel? profmodel;

   profeditData profeditdata = profeditData(Get.find());

   StatusRequest? statusRequest;

   File? file;

showOptionImage(){
  showbottommenu
(chooseImageCamera,chooseImageGallery);
}
chooseImageCamera()async{
  file = await imageUploadCamera();
  update();
}
chooseImageGallery()async{
  file = await fileUploadGallery(false);
  update();
}

 editedata() async {
  if (formstate.currentState!.validate()) { 
    
      statusRequest = StatusRequest.loading;
      update();
        Map data = {
     "id" : myServices.sharedPreferences.getString("id"), 
      "username": username.text,
           "age": age.text,
           "cuntry": cuntry.text,
           "desc": desc.text,
  };

      var response = await  profeditdata.updateDataprof(
    data , file,
       );
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          print("=============vr");
          // data.addAll(response['data']);
          print("=============eror");
          Get.offNamed(AppRoutes.Homescreenprof);
          profprofilecontrollerImp c = Get.find();
          c.getedata();
        } else {
          Get.defaultDialog(
              title: 'Warning', middleText: 'phone ou email already Exists');
          statusRequest = StatusRequest.failute;
        }
      }
      update();
    }
  }
  @override
  
  void onInit() {
    profmodel = Get.arguments['profModel'];

    username = TextEditingController();
    cuntry = TextEditingController();
    age = TextEditingController();
    desc = TextEditingController();
    catname = TextEditingController();
    cadid = TextEditingController();


    username.text = profmodel!.profName!;
    cuntry.text = profmodel!.profCuntry!;
    // category.text =profmodel!.u!;
    age.text = profmodel!.profAge!;
    desc.text = profmodel!.profDesc!;
    super.onInit();
  }
  
  
 
}
