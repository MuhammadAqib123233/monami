import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monami/controller/prof/home/homePage_controller.dart';
import 'package:monami/core/constant/colorApp.dart';
import 'package:monami/data/model/usersModel.dart';
import 'package:monami/linkapi.dart';

class ListlangenusersHome extends GetView<HomeProfControllerImp> {
  const ListlangenusersHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: 
      GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 100,
                childAspectRatio:  0.9,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10),
   itemCount: controller.langen.length,
          scrollDirection:Axis.vertical,
          
          itemBuilder: (context, i) {
     
         
            return Listlangen(
                usersmodel: usersModel.fromJson(controller.langen[i]));
          }),
    );
  }
}

class Listlangen extends GetView<HomeProfControllerImp> {
  final usersModel usersmodel;
  const Listlangen({super.key , required this.usersmodel});

  @override
  Widget build(BuildContext context) {
 return InkWell(
        onTap: () {
          controller.goToPageProductDetails(usersmodel);
        },
        child: Container(
          // color: Colors.black,
          width: 90,
          height: 100,
          child: Stack(
            children: [
              Container(
                width: 80,
                height: 90,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                        '${AppLink.imagesprof}/${usersmodel.usersImage}',
                      ),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16.0),
                      bottomLeft: Radius.circular(16.0),
                      topRight: Radius.circular(16.0),
                      bottomRight: Radius.circular(16.0)),
                      border: Border.all(
                          width: 1, color: AppColor.primaryColormonami),
                ),
              ),
              Positioned(
                  top: 75,
                  width: 80,
                  child: Container(
                    decoration: BoxDecoration(
                     color: AppColor.primaryColormonami ,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(15.0),
                        bottomLeft: Radius.circular(15.0),
                      ),
                      border: Border.all(
                          width: 1, color: AppColor.primaryColormonami),
                    ),
                    height: 19,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 6),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('${usersmodel.usersName}',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: AppColor.black,
                              )),
                          Container(
                              height: 12,
                              width: 12,
                              margin: EdgeInsets.only(right: 2),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("images/falg2.png"),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(40.0)))
                        ],
                      ),
                    ),
                  ))
            ],
          ),
        ));
  }
}
