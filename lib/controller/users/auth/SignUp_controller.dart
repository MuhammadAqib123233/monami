import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monami/core/class/statusrequest.dart';

import 'package:monami/core/constant/routes.dart';
import 'package:monami/core/function/handlingDatacontroller.dart';
import 'package:monami/data/datasource/remote/auth/signup.dart';

import '../../../data/model/usersmodel.dart';

abstract class SignUpcontroller extends GetxController {
  signUp();
  goToLogin();
}

class SignUpcontrollerImp extends SignUpcontroller {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController email;
  late TextEditingController name;
  late TextEditingController cuntry;
  late TextEditingController password;
  late TextEditingController age;

  StatusRequest? statusRequest;


usersModel? usersmodel;
  SignUpData signupdata = SignUpData(Get.find());

  List data = [];
  
  @override
  signUp() async {
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await signupdata.postdata(
           name.text,
           password.text, 
           email.text,
           cuntry.text, 
           age.text
            );
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          // data.addAll(response['data']);
          Get.offNamed(AppRoutes.verfiycodesignup,
              arguments: {'email': email.text});
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
  goToLogin() {
    Get.toNamed(AppRoutes.login);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    name = TextEditingController();
    age = TextEditingController();
    cuntry = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    // username.dispose();
    // phone.dispose();
    password.dispose();
    super.dispose();
  }
}
