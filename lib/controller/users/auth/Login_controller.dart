import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monami/core/class/statusrequest.dart';
import 'package:monami/core/constant/routes.dart';
import 'package:monami/core/function/handlingDatacontroller.dart';
import 'package:monami/core/services/services.dart';
import 'package:monami/data/datasource/remote/auth/login.dart';
import 'package:monami/data/model/usersmodel.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';
import 'package:zego_uikit_signaling_plugin/zego_uikit_signaling_plugin.dart';

abstract class Logincontroller extends GetxController {
  login();
  goToSingUp();
  goToForgetPassword();
  logouat();
}

class LogincontrollerImp extends Logincontroller {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  LoginData loginData = LoginData(Get.find());
  List data = [];

  late TextEditingController email;
  late TextEditingController password;

  bool isshowpassword = true;
  StatusRequest? statusRequest;

  MyServices myServices = Get.find();

  showPassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }

  @override
  login() async {
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await loginData.postdata(password.text, email.text);
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          // data.addAll(response['data']);
          if (response['data']['users_approve'].toString() == "1") {
            // myServices.sharedPreferences
            //     .setInt("id", response['data']['id']);
            // myServices.sharedPreferences
            //     .setString("username", response['data']['users_name']);
            // myServices.sharedPreferences
            //     .setString("email", response['data']['users_email']);
            print(response['data']);
            //usersModel currentUser = usersModel.fromJson(response['data'] as Map<String,dynamic>);
            myServices.sharedPreferences.setString("id", response['data']['id'].toString());
            myServices.sharedPreferences.setString("users_name", response['data']['users_name'].toString());
            myServices.sharedPreferences.setString("step", "4");
                      ZegoUIKitPrebuiltCallInvitationService().init(
    appID: 875055004 /*input your AppID*/,
    appSign: "58363f4b87ebe581fe502464ee8c0fcd92e59b4403648e9c9b756484cbf859af" /*input your AppSign*/,
    userID: response['data']['id'].toString(),
    userName: response['data']['users_name'] == null ? "" : response['data']['users_name'].toString(),
    plugins: [ZegoUIKitSignalingPlugin()],
    
  ); 
            Get.offNamed(AppRoutes.homepage);
          } 
        } else {
          Get.defaultDialog(title: 'Warning', middleText: 'not connect');
          statusRequest = StatusRequest.failute;
        }
      }
      update();
    }
  }

  @override
  goToSingUp() {
    Get.toNamed(AppRoutes.singUp);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToForgetPassword() {
    Get.toNamed(AppRoutes.forgetPassword);
  }

  @override
  logouat() {
    myServices.sharedPreferences.clear();
    Get.toNamed(AppRoutes.chesirLogin);
  }
}
