import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monami/controller/users/homePage_controller.dart';
import 'package:monami/core/constant/colorApp.dart';
import 'package:monami/data/model/profModel.dart';
import 'package:monami/linkapi.dart';

class Listprofsearch extends GetView<HomeControllerImp> {
  final List<profModel> listdatasearch;

  const Listprofsearch({super.key ,required this.listdatasearch, });

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return Container(
      height: 740,
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: listdatasearch.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                controller.goToPageProductDetails(listdatasearch[index]);
              },
              child: Container(
                child: Column(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 60,
                          // padding: EdgeInsets.symmetric(horizontal: 10),
                          margin: EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                              '${AppLink.imagesprof}/${controller.prof[index]['prof_image']}',
                                            ),
                                            fit: BoxFit.fill),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(30.0),
                                          bottomRight: Radius.circular(30.0),
                                          topRight: Radius.circular(30.0),
                                          bottomLeft: Radius.circular(30.0),
                                        ),
                                        border: Border.all(
                                            color: AppColor.primaryColormonami,
                                             width: 1)
                                        ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                              '${controller.prof[index]['prof_name']}',
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600,
                                                color: AppColor.black,
                                              )),

                                          SizedBox(
                                            width: 10,
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top: 7),
                                            child: CircleAvatar(
                                              radius: 10,
                                              backgroundImage: AssetImage(
                                                  "images/brazil.png"),
                                            ),
                                          ),
                                       
                                        ],
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Row(
                                        children: [
                                          Text('English'),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Container(
                                height: 80,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        IconButton(
                                            icon: const Icon(
                                              Icons.video_call_outlined,
                                              color: Color(0xff0ACD69),
                                            ),
                                            onPressed: () {
                                              // Navigator.of(context)
                                              //     .pushNamed('att_call');
                                            }),
                                        // Text('followers'),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: AppColor.primaryColormonami,
                    )
                  ],
                ),
              ),
            );
          }),
);
}
}
