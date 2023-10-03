import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monami/controller/users/homePage_controller.dart';
import 'package:monami/core/constant/colorApp.dart';
import 'package:monami/linkapi.dart';

class ListprofHome extends GetView<HomeControllerImp> {
  const ListprofHome({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
         padding: EdgeInsets.only(left: 15),
        // margin: EdgeInsets.symmetric(vertical: 10),
        height: 110,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          // itemCount: controller.prof.length,
          itemBuilder: (context, index) {
            return Container(
              // color: Colors.black,
              width: 100,
              height: 110,
              child: Stack(
                children: [
                  Container(
                    width: 90,
                    height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                            '${AppLink.imagesprof}/${controller.prof[index]['prof_image']}',
                          ),
                          fit: BoxFit.cover
                          ),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16.0),
                          bottomLeft: Radius.circular(16.0),
                          topRight: Radius.circular(16.0),
                          bottomRight: Radius.circular(16.0)),
                    ),
                  ),
                  Positioned(
                      top: 80,
                      width: 90,
                      child: Container(
                        decoration: BoxDecoration(
                          color:
                              Color.fromARGB(255, 255, 255, 255).withOpacity(1),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(15.0),
                            bottomLeft: Radius.circular(15.0),
                          ),
                          border: Border.all(width: 1, color: Colors.green),
                        ),
                        height: 20,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 6),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('${controller.prof[index]['prof_name']}',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: AppColor.black,
                                  )),
                              Container(
                                height: 12,
                                width: 12,
                          margin: EdgeInsets.only(right: 5),

                               
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
            );
          },
        ),
      ),
    );
  }
}
