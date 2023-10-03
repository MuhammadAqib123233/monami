import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:monami/core/constant/routes.dart';
import 'package:monami/core/services/services.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';
import 'package:zego_uikit_signaling_plugin/zego_uikit_signaling_plugin.dart';

class MyMiddleware extends GetMiddleware {
  int? get priority => 1;

  MyServices myServices = Get.find();

  RouteSettings? redirect(String? route) {
    if (myServices.sharedPreferences.getString('step') == "3") {
      return RouteSettings(name: AppRoutes.add_edata_users);
    }
    
     if (myServices.sharedPreferences.getString('step') == "4") {
      ZegoUIKitPrebuiltCallInvitationService().init(
    appID: 2086014843 /*input your AppID*/,
    appSign: "10db663298f49efe34b65bc8734ae8b02b050817a0d9ab6866fa1c13153cc5de" /*input your AppSign*/,
    userID: myServices.sharedPreferences.getString("id").toString(),
    userName: myServices.sharedPreferences.getString("id").toString(),
    plugins: [ZegoUIKitSignalingPlugin()],
  ); 
  print(myServices.sharedPreferences.getString("users_name").toString());
      return RouteSettings(name: AppRoutes.homepage);
    }
    
     if (myServices.sharedPreferences.getString('step') == "5") {
       ZegoUIKitPrebuiltCallInvitationService().init(
    appID: 2086014843 /*input your AppID*/,
    appSign: "10db663298f49efe34b65bc8734ae8b02b050817a0d9ab6866fa1c13153cc5de" /*input your AppSign*/,
    userID: myServices.sharedPreferences.getString("id").toString(),
    userName: myServices.sharedPreferences.getString("username").toString(),
    plugins: [ZegoUIKitSignalingPlugin()],
  ); 
      return RouteSettings(name: AppRoutes.Homescreenprof);
    }


    if (myServices.sharedPreferences.getString('step') == "1") {
      return RouteSettings(name: AppRoutes.login);
    }
    
    if (myServices.sharedPreferences.getString('step') == "2") {
      return RouteSettings(name: AppRoutes.LoginProf);
    
    }
    return null;
  }
}
