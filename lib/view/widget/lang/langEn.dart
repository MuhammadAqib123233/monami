import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monami/controller/users/favoret_controller.dart';
import 'package:monami/controller/prof/lang/vplangen_controller.dart';
import 'package:monami/core/constant/colorApp.dart';
import 'package:monami/data/model/profModel.dart';
import 'package:monami/linkapi.dart';

class cstmLangEn extends GetView<viewpluslangenImp> {
  final profModel profmodel;
  const cstmLangEn({
    super.key,
    required this.profmodel,
  });

  @override
  Widget build(BuildContext context) {
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
                              Text(
                                '${profmodel.profName}',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: AppColor.black),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              CircleAvatar(
                                radius: 7,
                                backgroundImage:
                                    AssetImage("images/brazil.png"),
                              ),
                            ],
                          ),
                          Text(
                              'Anglais',
                          )
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          IconButton(
                              icon: const Icon(
                                Icons.arrow_circle_right_outlined,
                                size: 24,
                                color: AppColor.buttommonami,
                              ),
                              onPressed: () {
                                Navigator.of(context).pushNamed('profile');
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
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "${profmodel.profDesc}",
                style: TextStyle(
                  fontSize: 15,
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
                                        profmodel.profId.toString(), "0");
                                    controller
                                        .removeFavorite(profmodel.profId.toString());
                                  } else {
                                    controller.setFavorite(
                                        profmodel.profId.toString(), "1");
                                    controller.addFavorite(profmodel.profId.toString());
                                  }
                                },
                                icon: Icon(
                                  controller.isFavorite[profmodel.profId].toString() == "1"
                                      ? Icons.favorite
                                      : Icons.favorite_border_outlined,
                                  color: AppColor.primaryColor,
                                )),
                            Text("followers"),
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
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            child: Row(
                              children: [
                                Text(
                                  " Appel video ",
                                  style: TextStyle(
                                      color: AppColor.white,
                                      fontWeight: FontWeight.w500),
                                ),
                                Image(image: AssetImage("images/Vector.png"))
                              ],
                            ))),
                  ),
                ),
                Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset('images/chat.png')),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              height: 1,
              color: AppColor.buttommonami,
            )
          ],
        ),
      ),
    );
  }
}