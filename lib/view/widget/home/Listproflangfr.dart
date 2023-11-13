import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monami/controller/users/favoret_controller.dart';
import 'package:monami/controller/users/homePage_controller.dart';
import 'package:monami/core/constant/colorApp.dart';
import 'package:monami/data/model/profModel.dart';
import 'package:monami/linkapi.dart';



class ListlangenHome extends GetView<HomeControllerImp> {
  const ListlangenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.builder(
          itemCount: controller.langen.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, i) {
            return Listlangen(
                profmodel: profModel.fromJson(controller.langen[i]));
          }),
    );
  }
}


class Listlangen extends GetView<HomeControllerImp> {
  final profModel profmodel;
  const Listlangen({super.key , required this.profmodel});

  @override
  Widget build(BuildContext context) {
 return InkWell(onTap: () {
            Get.defaultDialog(
              title: "Profile",
              content: Center(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  height: 170,
                  decoration: BoxDecoration(
                      color: AppColor.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60.0),
                          bottomLeft: Radius.circular(40.0),
                          topRight: Radius.circular(40.0),
                          bottomRight: Radius.circular(40.0))),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  width: 70,
                                  height: 70,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                          '${AppLink.imagesprof}/${profmodel.profImage}',
                                        ),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(
                                        width: 1, color: AppColor.primaryColormonami),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Text('${profmodel.profName}',
                                          style: TextStyle(
                                            fontSize: 20,
                                            letterSpacing: 2,
                                            fontWeight: FontWeight.bold,
                                            color: AppColor.black,
                                          )),
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Container(
                                      child: Text('Anglias',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: Color.fromARGB(
                                                255, 147, 146, 146),
                                          )),
                                    ),
                                    SizedBox(
                                      height: 25,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              // Container(
                              //   height: 50,
                              //   width: 50,
                              //   child: GetBuilder<Favoritecontroller>(
                              //     builder: (controller) => IconButton(
                              //         onPressed: () {
                              //           if (controller
                              //                   .isFavorite[profmodel.profId] ==
                              //               "1") {
                              //             controller.setFavorite(
                              //                 profmodel.profId, "0");
                              //             controller.removeFavorite(
                              //                 profmodel.profId!);
                              //           } else {
                              //             controller.setFavorite(
                              //                 profmodel.profId, "1");
                              //             controller
                              //                 .addFavorite(profmodel.profId!);
                              //           }
                              //         },
                              //         icon: Icon(
                              //           controller.isFavorite[
                              //                       profmodel.profId] ==
                              //                   "1"
                              //               ? Icons.favorite
                              //               : Icons.favorite_border_outlined,
                              //           color: AppColor.favorite,
                              //         )),
                              //   ),
                              // ),
                              SizedBox(
                                height: 30,
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Container(
                          height: 30,
                          width: 120,
                          decoration: BoxDecoration(
                            color: AppColor.appelvideo,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                                topRight: Radius.circular(10),
                                topLeft: Radius.circular(10)),
                          ),
                          child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              child: Row(
                                children: [
                                  Text(
                                    " Appel video ",
                                    style: TextStyle(
                                        color: AppColor.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Image(image: AssetImage("images/Vector.png"))
                                ],
                              ))),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                                height: 30,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: AppColor.buttommonami,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                      topLeft: Radius.circular(10)),
                                ),
                                child: InkWell(
                                  onTap: () {
                                    controller
                                        .goToPageProductDetails(profmodel);
                                    // Get.back();
                                  },
                                  child: Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 5),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            "Profile",
                                            style: TextStyle(
                                                color: AppColor.white,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Icon(
                                            Icons.person,
                                            color: AppColor.white,
                                          )
                                        ],
                                      )),
                                )),
                            SizedBox(width: 25),
                            Container(
                                height: 30,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: AppColor.buttommonami,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                      topLeft: Radius.circular(10)),
                                ),
                                child: Container(
                                    margin: EdgeInsets.symmetric(horizontal: 5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          "Messages",
                                          style: TextStyle(
                                              color: AppColor.white,
                                              fontSize: 10,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Icon(
                                          Icons.chat_rounded,
                                          color: AppColor.white,
                                        )
                                      ],
                                    ))),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
 },
     child: Container(
              // color: Colors.black,
              width: 80,
              height: 100,
              child: Stack(
                children: [
                  Container(
                  width: 70,
                   height: 80,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                            '${AppLink.imagesprof}/${profmodel.profImage}',
                          ),
                          fit: BoxFit.cover
                          ),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16.0),
                          bottomLeft: Radius.circular(16.0),
                          topRight: Radius.circular(16.0),
                          bottomRight: Radius.circular(16.0)),border: Border.all(
                          width: 1, color: AppColor.primaryColormonami),
                    ),
                  ),
                  Positioned(
                         top: 65,
                  width: 70,
                      child: Container(
                        decoration: BoxDecoration(
                         color: AppColor.primaryColormonami,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(15.0),
                            bottomLeft: Radius.circular(15.0),
                          ),
                         border: Border.all(
                          width: 1, color: AppColor.primaryColormonami),
                        ),
                        height: 20,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 1),
                          child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('${profmodel.profName}',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: AppColor.black,
                                  )),
                              Container(
                                height: 12,
                                width: 12,
                          margin: EdgeInsets.only(right: 1),
                                   decoration: BoxDecoration(
                                    image: DecorationImage(image:AssetImage("images/falg2.png"),
                                    fit: BoxFit.cover
                                    ),
                          borderRadius: BorderRadius.circular(40.0))
                              )
                            ],
                          ),
                        ),
                      ))
                ],
              ),
            ),
      
      
    );
  }
}
