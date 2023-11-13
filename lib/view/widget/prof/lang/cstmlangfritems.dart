import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monami/controller/users/lang/vplangen_controller.dart';
import 'package:monami/controller/users/favoret_controller.dart';
import 'package:monami/core/constant/colorApp.dart';
import 'package:monami/data/model/usersModel.dart';
import 'package:monami/linkapi.dart';

class cstmLangEnusers extends GetView<viewpluslangenusresImp> {
  final usersModel usersmodel;
  const cstmLangEnusers({
    super.key,
    required this.usersmodel,
  });

  @override
  Widget build(BuildContext context) {
        // ignore: unused_local_variable
        Favoritecontroller controllerfav = Get.put(Favoritecontroller());
    return InkWell(
        onTap: () {
        controller.goToPageProductDetails(usersmodel);
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10 , horizontal:10),
          margin: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
          decoration: BoxDecoration(
            color: AppColor.white,
            boxShadow: [BoxShadow(
              // blurRadius: 0.5,
            color: AppColor.buttommonami.withOpacity(0.5),
            offset: Offset(0, 2)
            )],
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
          padding: EdgeInsets.symmetric(vertical: 5 , horizontal: 5),
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                    '${AppLink.imagesprof}/${usersmodel.usersImage}',
                                  ),
                                  fit: BoxFit.fill),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30.0),
                                bottomRight: Radius.circular(30.0),
                                topRight: Radius.circular(30.0),
                                bottomLeft: Radius.circular(30.0),
                              ),
                              border:
                                  Border.all(color: AppColor.primaryColormonami, width: 1.5)),
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
                                  '${usersmodel.usersName}',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: AppColor.black),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                              ],
                            ),  SizedBox(
                                  height: 20,
                                ),
                            
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
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 4),
                child: Text(
                  "${usersmodel.usersDesc}",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(255, 31, 28, 28),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                      margin: EdgeInsets.all(5),
                      child: Image.asset('images/chat.png')),
                ],
              ),
              // Container(
              //   margin: EdgeInsets.symmetric(horizontal: 30),
              //   height: 0.5,
              //   color: AppColor.buttommonami,
              // )
            ],
          ),
        ),
      
    );
  }
}