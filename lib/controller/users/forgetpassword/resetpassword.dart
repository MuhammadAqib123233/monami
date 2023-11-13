import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monami/core/class/statusrequest.dart';
import 'package:monami/core/constant/routes.dart';
import 'package:monami/core/function/handlingDatacontroller.dart';
import 'package:monami/data/datasource/remote/forgetpassword/resetpassword.dart';

abstract class Resetpasswordcontroller extends GetxController {
  resetPassword();
  goToSuccessResetPassword();
}

class ResetpasswordcontrollerImp extends Resetpasswordcontroller {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  ResetPasswordForgetPasswordData resetPasswordForgetPasswordData =
      ResetPasswordForgetPasswordData(Get.find());

  String? email;

  late TextEditingController password;
  late TextEditingController repassword;
  StatusRequest? statusRequest;

  @override
  resetPassword(){}

  @override
  goToSuccessResetPassword() async {
       if (password.text != repassword) {
        return Get.defaultDialog(
            title: 'Warning', middleText: 'password not match');
      }
      
          if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await resetPasswordForgetPasswordData.postdata(
        email!,
        password.text,
      );
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          // data.addAll(response['data']);
          Get.offNamed(
            AppRoutes.successResetPassword);
        } else {
          Get.defaultDialog(title: 'Warning', middleText: 'try again');
          statusRequest = StatusRequest.failute;
        }
      }
      update();
    }
  }

  @override
  void onInit() {
    email = Get.arguments['email'];
    password = TextEditingController();
    repassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    repassword.dispose();
    super.dispose();
  }
}
