import 'dart:io';

import 'package:drop_down_list/model/selected_list_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:monami/controller/users/profile/viewprofilecontroller.dart';
import 'package:monami/core/class/statusrequest.dart';
import 'package:monami/core/constant/routes.dart';
import 'package:monami/core/function/handlingDatacontroller.dart';
import 'package:monami/core/function/uplaodfile.dart';
import 'package:monami/core/services/services.dart';
import 'package:monami/data/datasource/remote/users/usersdataedit.dart';
import 'package:monami/data/model/usersModel.dart';

abstract class userseditprofilecontroller extends GetxController {
  editedata();
}

class userseditprofilecontrollerImp extends userseditprofilecontroller {
       GlobalKey<FormState> formstate = GlobalKey<FormState>();

  MyServices myServices = Get.find();
  
  List<SelectedListItem> dropdownList = [];

  late TextEditingController dropdownname;
  late TextEditingController dropdown;
  late TextEditingController username;
  late TextEditingController age;
  late TextEditingController desc;
  late TextEditingController cuntry;
  late TextEditingController catname;
  late TextEditingController cadid;

  // String? username;
  // String? id;

   usersModel? usersmodel;

   userseditData userseditdata = userseditData(Get.find());

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


  @override
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

      var response = await  userseditdata.updateDatausers(
    data , file,
       );
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          print("=============vr");
          // data.addAll(response['data']);
          print("=============eror");
          Get.offNamed(AppRoutes.homepage);
          usersprofilecontrollerImp c = Get.find();
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
    usersmodel = Get.arguments['usersModel'];

    username = TextEditingController();
    cuntry = TextEditingController();
    // category = TextEditingController();
    age = TextEditingController();
    desc = TextEditingController();
    dropdownname = TextEditingController();
    dropdown = TextEditingController();
    catname = TextEditingController();
    cadid = TextEditingController();


    username.text = usersmodel!.usersName!;
    cuntry.text = usersmodel!.usersCuntry!;
    // category.text =usersmodel!.u!;
    age.text = usersmodel!.usersAge!;
    desc.text = usersmodel!.usersDesc!;
    super.onInit();
  }
  
 
}
