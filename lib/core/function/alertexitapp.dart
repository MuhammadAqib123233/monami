import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monami/core/constant/colorApp.dart';
Future<bool> alertExitApp() {
  Get.defaultDialog(
      title: "warning",
      titleStyle:const  TextStyle(color: AppColor.buttommonami , fontWeight: FontWeight.bold),
      middleText: "Do you want to exit the app?" ,
      actions: [
        ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(AppColor.buttommonami)),
            onPressed: () {
              exit(0);
            },
            child:const Text("confirm")),
        ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(AppColor.buttommonami)),
            onPressed: () {
              Get.back();
            },
            child:const Text("cancel"))
      ]);
  return Future.value(true);
}