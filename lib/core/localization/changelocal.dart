import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:monami/core/constant/themedata.dart';
import 'package:monami/core/function/notification.dart';
import 'package:monami/core/services/services.dart';

class LocalController extends GetxController {
  Locale? language;

  MyServices myServices = Get.find();

  ThemeData appTheme = themeEnglish;

  changelang(String codeLocal) {
    Locale locale = Locale(codeLocal);
    myServices.sharedPreferences.setString("lang", codeLocal);
    appTheme = codeLocal == 'ar' ? themeArabic : themeEnglish;
    Get.changeTheme(appTheme);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    // RequestPremesionNotification();
    // RNotificationSettings();
    String codeLang = myServices.sharedPreferences.getString('lang') ??
        Get.deviceLocale!.languageCode;
    language = Locale(codeLang);

    super.onInit();
  }
}
