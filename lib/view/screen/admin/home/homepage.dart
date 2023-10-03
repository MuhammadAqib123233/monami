import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monami/controller/prof/active/active.dart';
import 'package:monami/controller/prof/home/homePage_controller.dart';
import 'package:monami/core/class/handlingDataview.dart';
import 'package:monami/core/constant/colorApp.dart';
import 'package:monami/core/constant/routes.dart';
import 'package:monami/view/widget/bkvideo.dart';
import 'package:monami/view/widget/prof/Listproflangen.dart';
import 'package:monami/view/widget/prof/home/bottom_active.dart';
import 'package:monami/view/widget/prof/home/monAccontProf.dart';

class HomePageprof extends StatefulWidget {
  const HomePageprof({super.key});

  @override
  State<HomePageprof> createState() => _HomePageprofState();
}

class _HomePageprofState extends State<HomePageprof> {
  @override
  Widget build(BuildContext context) {
    HomeProfControllerImp controller = Get.put(HomeProfControllerImp());
 Get.put(activecontroller());
    return Scaffold(
      body: Stack(
        children: [
           BackgroundVideoWidget(),
        Container(
          child: RefreshIndicator(
            onRefresh: () async {
              await Future.delayed(
                Duration(seconds: 1),
              );
              controller.getData();
                      
              setState(() {});
            },
            child: ListView(children: [
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [        
                  Center(child: BottomActive()),
                  SizedBox(
                    height: 15,
                  ),
                  monAccontProf(),
                  SizedBox(
                    height: 10, 
                  ),
                  Center(
                    child: Text("vous avez gagnez jus-qui a maintenant de :",
          style: TextStyle(
              color: AppColor.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
              ),
        ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Vos amis',
                          style: TextStyle(
                              fontFamily: "Cairo",
                              fontSize: 18,
                              color: AppColor.buttommonami,
                              fontWeight: FontWeight.w700),
                        ),
                        InkWell(
                          onTap: () {
                            Get.toNamed(AppRoutes.prlntUsers_En);
                          },
                          child: Container(
                            child: Row(children: [
                              Text(
                                "View plus",
                                style: TextStyle(color: AppColor.grey),
                              ),
                              Icon(
                                Icons.login_outlined,
                                color: AppColor.grey,
                              )
                            ]),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    height: 500,
                    child: GetBuilder<HomeProfControllerImp>(
                        builder: ((controller) => handlingDataView(
                              statusRequest: controller.statusRequest,
                              widget: ListlangenusersHome(),
                            ))),
                  )
                ],
              ),
            ]),
          )),
        ],
      ),
    );
  }
}
