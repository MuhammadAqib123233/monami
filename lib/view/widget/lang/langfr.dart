import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monami/controller/users/favoret_controller.dart';
import 'package:monami/controller/prof/lang/vplangen_controller.dart';
import 'package:monami/core/constant/colorApp.dart';
import 'package:monami/data/model/profModel.dart';
import 'package:monami/linkapi.dart';

class cstmLangfr extends GetView<viewpluslangenImp> {
  final profModel profmodel;
  const cstmLangfr({
    super.key,
    required this.profmodel,
  });

  @override
  Widget build(BuildContext context) {
    Get.put(viewpluslangenImp());
    // ignore: unused_local_variable
    Favoritecontroller controllerfav = Get.put(Favoritecontroller());
    return InkWell(
      onTap: () {
        controller.goToPageProductDetails(profmodel);
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        margin: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          // color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                  '${AppLink.imagesprof}/${profmodel.profImage}',
                                ),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              bottomRight: Radius.circular(30.0),
                              topRight: Radius.circular(30.0),
                              bottomLeft: Radius.circular(30.0),
                            ),
                            border:
                                Border.all(color: AppColor.green, width: 1)),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  '${profmodel.profName}',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: "Cairo",
                                      fontWeight: FontWeight.w600,
                                      color: AppColor.black),
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              // CircleAvatar(
                              //   radius: 7,
                              //   backgroundImage:
                              //       AssetImage("images/brazil.png"),
                              // ),
                            ],
                          ),
                          Text(
                            'Français ',
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color:
                                    const Color.fromARGB(255, 125, 123, 123)),
                          )
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Row(
                            children: [
                              ...List.generate(
                                  5,
                                  (index) => Icon(
                                        Icons.star_rate_rounded,
                                        color: AppColor.gold,
                                        size: 15,
                                      ))
                            ],
                          ),
                          IconButton(
                              icon: const Icon(
                                Icons.arrow_circle_right_outlined,
                                size: 24,
                                color: AppColor.buttommonami,
                              ),
                              onPressed: () {
                                controller.goToPageProductDetails(profmodel);
                              }),
                          // Text('followers'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 3, top: 8),
              child: Text(
                "${profmodel.profDesc}",
                style: TextStyle(
                  fontSize: 12,
                  color: AppColor.black,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GetBuilder<Favoritecontroller>(
                    builder: (controller) => Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  if (controller.isFavorite[profmodel.profId] ==
                                      "1") {
                                    controller.setFavorite(
                                        profmodel.profId!, "0");
                                    controller.removeFavorite(
                                        profmodel.profId.toString());
                                  } else {
                                    controller.setFavorite(
                                        profmodel.profId!, "1");
                                    controller.addFavorite(
                                        profmodel.profId.toString());
                                  }
                                },
                                icon: Icon(
                                  controller.isFavorite[profmodel.profId!] == "1"
                                      ? Icons.favorite
                                      : Icons.favorite_border_outlined,
                                  color: AppColor.favorite,
                                )),
                            Text("follow"),
                          ],
                        )),
                Center(
                  child: InkWell(
                    onTap: () {
                      // controller.gotoeditedata(
                      //     controller.data[index]);
                    },
                    child: Container(
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
                            margin: EdgeInsets.symmetric(horizontal: 2),
                            child: Row(
                              children: [
                                Text(
                                  " Appel video ",
                                  style: TextStyle(
                                      color: AppColor.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                                Image(
                                  image: AssetImage("images/Vector.png"),
                                  width: 25,
                                  height: 25,
                                )
                              ],
                            ))),
                  ),
                ),
                Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset('images/chat.png')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
