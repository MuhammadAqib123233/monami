import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monami/core/class/statusrequest.dart';
import 'package:monami/core/constant/routes.dart';
import 'package:monami/core/function/handlingDatacontroller.dart';
import 'package:monami/core/services/services.dart';
import 'package:monami/data/datasource/remote/auth/loginProf.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';
import 'package:zego_uikit_signaling_plugin/zego_uikit_signaling_plugin.dart';

abstract class LoginProfcontroller extends GetxController {
LoginProf();
}

class LoginProfcontrollerImp extends LoginProfcontroller {
GlobalKey<FormState> formstate = GlobalKey<FormState>();
LoginprofData loginprofData = LoginprofData(Get.find());

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
LoginProf() async {
if (formstate.currentState!.validate()) {
statusRequest = StatusRequest.loading;
update();
var response = await loginprofData.postdata(password.text, email.text,);
statusRequest = handlingData(response);
if (StatusRequest.success == statusRequest) {
// if (response['status'] == "success") {
// data.addAll(response['data']);
if(response['data']['prof_approve'] == 1){
// ignore: unused_local_variable
// String profid = myServices.sharedPreferences.getString("id")! ;
//print(response['data']);
ZegoUIKitPrebuiltCallInvitationService().init(
    appID: 2086014843 /*input your AppID*/,
    appSign: "10db663298f49efe34b65bc8734ae8b02b050817a0d9ab6866fa1c13153cc5de" /*input your AppSign*/,
    userID: response['data']['prof_id'].toString(),
    userName: response['data']['prof_name'] == null ? "" : response['data']['prof_name'].toString(),
    plugins: [ZegoUIKitSignalingPlugin()],
  ); 
myServices.sharedPreferences.setString("id", response['data']['prof_id'].toString()) ;
myServices.sharedPreferences.setString("username", response['data']['prof_name']) ;
myServices.sharedPreferences.setString("email", response['data']['prof_email']) ;
myServices.sharedPreferences.setString("step","5") ;
Get.offNamed(AppRoutes.Homescreenprof);
}
else{
Get.toNamed(AppRoutes.verfiycodesignup, arguments: {
"email" : email.text
});
}
} else {
Get.defaultDialog(title: 'Warning', middleText: 'not connect');
statusRequest = StatusRequest.failute;
}
}
update();
// }
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

}