import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monami/controller/users/productdetails_cont.dart';
import 'package:monami/core/constant/routes.dart';

class TopPageProductDetails extends GetView<ProductDetailsControllerImp> {
  const TopPageProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(15),
              //          decoration: BoxDecoration(
              //       color: Colors.green,
              // ),
              
              
              height: 440,
            width: double.infinity,
              child: Column(
                children: [
                Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
             IconButton(onPressed: () {
              Get.back();
             }, icon: Icon(Icons.arrow_back_ios),
              ),
                   IconButton(onPressed: () {
                    Get.toNamed(AppRoutes.MyFavorite);
                     }, icon: Icon(Icons.favorite_outline_outlined, color: Colors.redAccent,),
                     )
                     ]),
              //  Container(
              //      height: 350,
              //      child :  CachedNetworkImage(imageUrl:'${AppLink.imagesItems}/${controller.itemsModel.itemsImage}' ))
                 ],
               ),
       );
  }
}