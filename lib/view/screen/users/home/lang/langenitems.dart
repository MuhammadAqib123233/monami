import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monami/controller/prof/lang/vplangen_controller.dart';
import 'package:monami/controller/users/favoret_controller.dart';
import 'package:monami/core/class/handlingDataview.dart';
import 'package:monami/core/constant/colorApp.dart';
import 'package:monami/data/model/profModel.dart';
import 'package:monami/view/widget/lang/langEn.dart';


class prlnt_En extends StatelessWidget {
  const prlnt_En({super.key});

  @override
  Widget build(BuildContext context) {
      Get.put(viewpluslangenImp());
       Favoritecontroller controllerfav = Get.put(Favoritecontroller());
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        centerTitle: true,
        title: Text(
          "Parlant Anglais",
          style: TextStyle(
            color: AppColor.buttommonami,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back,
          ),
          color: AppColor.buttommonami,
        ),
      ),
      backgroundColor: Color.fromARGB(244, 254, 250, 250),
      body: Container(
        color: Color.fromARGB(244, 255, 255, 255),
        child: ListView(
          children: [
            GetBuilder<viewpluslangenImp>(
                builder: (controller) => handlingDataView(
                      statusRequest: controller.statusRequest,
                      widget: ListView.builder(
                          itemCount: controller.data.length,
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            controllerfav.isFavorite[controller.data[index]['prof_id']] = controller.data[index]['favorie'] ;
                            return Container(
                              child: cstmLangEn(
                                profmodel:
                                    profModel.fromJson(controller.data[index]),
                              ),
                            );
                          }),
               ))
          ],
        ),
      ),
    );
  }
}