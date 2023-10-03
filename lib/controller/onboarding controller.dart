// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:monami/core/constant/routes.dart';
import 'package:monami/core/services/services.dart';
import 'package:monami/data/datasource/static/static.dart';

abstract class OnBoardingController extends GetxController {
  next();
  onpagechanged(int index);
}

class OnBoardingControllerImp extends OnBoardingController {
  int currentPage = 0;

  MyServices myServices = Get.find();

  late PageController pageController;
  @override
  next() {
    currentPage++;

    if (currentPage > onBoardingList.length - 1) {
      myServices.sharedPreferences.setString("step", "1");
      // print("page4");
      Get.offAllNamed(AppRoutes.login);
    } else {
      pageController.animateToPage(currentPage,
          duration: const Duration(milliseconds: 90), curve: Curves.easeInOut);
    }
  }

  @override
  onpagechanged(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
