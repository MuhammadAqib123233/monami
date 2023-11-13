import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monami/controller/users/homePage_controller.dart';
import 'package:monami/core/class/handlingDataview.dart';
import 'package:monami/core/constant/colorApp.dart';
import 'package:monami/core/constant/routes.dart';
import 'package:monami/view/widget/ads/indctor.dart';
import 'package:monami/view/widget/bkvideo.dart';
import 'package:monami/view/widget/home/Listproflangen.dart';
import 'package:monami/view/widget/home/Listproflangfr.dart';
import 'package:monami/view/widget/home/cons.dart';
import 'package:monami/view/widget/home/listcategoryhome.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   HomeControllerImp controller = Get.put(HomeControllerImp());
  @override
  void initState() {
    //  Get.put(HomeControllerImp());
         controller.getData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    HomeControllerImp controller = Get.put(HomeControllerImp());
    return Scaffold(
      body: Stack(
        children: [
          //  BackgroundVideoWidget(),
          Container(
              // padding: EdgeInsets.symmetric(horizontal: 15),
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
                  MainScren(),
                  SizedBox(
                    height: 15,
                  ),
                  MonAcc(),
                  SizedBox(
                    height: 10,
                  ),
                  // cstmtitlehome(
                  //   titlehome: 'Category',
                  // ),
                  ListCategoryHome(),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Parlant français',
                          style: TextStyle(
                              fontFamily: "Cairo",
                              fontSize: 18,
                              color: AppColor.white,
                              fontWeight: FontWeight.w700),
                        ),
                        InkWell(
                            onTap: () {
                              Get.toNamed(AppRoutes.prlnt_fr);
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
                            ))
                      ],
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    height: 90,
                    child: Container(
                      height: 100,
                      child: GetBuilder<HomeControllerImp>(
                          builder: ((controller) => handlingDataView(
                                statusRequest: controller.statusRequest,
                                widget: ListlangfrHome(),
                              ))),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Parlant anglais',
                          style: TextStyle(
                              fontFamily: "Cairo",
                              fontSize: 18,
                              color: AppColor.white,
                              fontWeight: FontWeight.w700),
                        ),
                        InkWell(
                          onTap: () {
                            Get.toNamed(AppRoutes.prlnt_En);
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
                  Container( padding: EdgeInsets.only(left: 15,right:15), // margin: EdgeInsets.symmetric(horizontal: 10),
                    height: 100,
                    child: Container(
                      height: 100,
                      child: GetBuilder<HomeControllerImp>(
                          builder: ((controller) => handlingDataView(
                                statusRequest: controller.statusRequest,
                                widget: ListlangenHome(),
                              ))),
                    ),
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
