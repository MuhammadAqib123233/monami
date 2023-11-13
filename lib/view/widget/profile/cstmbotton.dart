import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monami/controller/onboarding%20controller.dart';
import 'package:monami/core/constant/colorApp.dart';

// ignore: camel_case_types
class bottomSave extends GetView<OnBoardingControllerImp> {
  const bottomSave({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: bo,
        height: 40,
        margin: const EdgeInsets.only(bottom: 10),
        child: MaterialButton(
          padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 4),
          onPressed: () {
          controller.next();
          },
          color: AppColor.primaryColor ,
          child: const Text('contenue',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
        ));
  }
}
