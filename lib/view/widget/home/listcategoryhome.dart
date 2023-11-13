import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monami/controller/users/homePage_controller.dart';
import 'package:monami/core/constant/colorApp.dart';

class ListCategoryHome extends GetView<HomeControllerImp> {
  const ListCategoryHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
       padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 15,
            ),
            margin: EdgeInsets.only(
              left: 20,
            ),
            height: 25,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.0),
                bottomRight: Radius.circular(15.0),
                bottomLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0),
              ),
              border: Border.all(width: 0.7, color: AppColor.white),
            ),
            child: Center(
              child: Text(
                "Afrique",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: AppColor.white),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            margin: EdgeInsets.only(
              left: 20,
            ),
            height: 25,
            width: 85,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.0),
                bottomRight: Radius.circular(15.0),
                bottomLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0),
              ),
              border: Border.all(width: 0.7, color: AppColor.white),
            ),
            child: Center(
              child: Text(
                "Local",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: AppColor.white),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            margin: EdgeInsets.only(
              left: 20,
            ),
            height: 25,
            width: 85,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.0),
                bottomRight: Radius.circular(15.0),
                bottomLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0),
              ),
              border: Border.all(width: 0.7, color: AppColor.white),
            ),
            child: Center(
              child: Text(
                "Europe",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: AppColor.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
