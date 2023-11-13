import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monami/controller/users/auth/Login_controller.dart';
import 'package:monami/core/constant/colorApp.dart';
import 'package:monami/core/constant/routes.dart';
import 'package:share_plus/share_plus.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
        LogincontrollerImp controller = Get.put(LogincontrollerImp());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        centerTitle: true,
        title: Text(
          "Paramètre",
          style: TextStyle(
            color: AppColor.buttommonami,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back,
          ),
          color: AppColor.buttommonami,
        ),
      ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          color: AppColor.white,
          child: Column(children: [
            InkWell(onTap: () {
              Share.share('https://play.google.com/store/apps?hl=fr&gl=US'); 
            },
              child: ListTile(
                title: Text(
                  'Inviter',
                  style: TextStyle(color: AppColor.black),
                ),
                leading: Icon(Icons.person_add_alt_1_outlined, color: AppColor.black),
               
              ),
            ),
            ListTile(
              title: Text(
                'Language',
                style: TextStyle(color: AppColor.black),
              ),
              leading: Icon(Icons.translate_outlined, color: AppColor.black),
               onTap: () {
                Get.toNamed(AppRoutes.language);
              },
            ),
            ListTile(
              title: Text(
                'Notifications',
                style: TextStyle(color: AppColor.black),
              ),
              leading: Icon(Icons.notifications_outlined, color: AppColor.black),
            ),
            ListTile(
              title: Text(
                'Sécurité',
                style: TextStyle(color: AppColor.black),
              ),
              leading: Icon(Icons.lock_outlined, color: AppColor.black),
            ),
            ListTile(
              title: Text(
                '',
                style: TextStyle(color: AppColor.black),
              ),
              leading: Icon(Icons.person_off_rounded, color: AppColor.black),
            ),
            ListTile(
              title: Text(
                'Conditions d’utilisation',
                style: TextStyle(color: AppColor.black),
              ),
              leading: Icon(Icons.description_outlined, color: AppColor.black),
              onTap: () {
                    Get.toNamed(AppRoutes.Conditions);
              },
            ),
            ListTile(
              title: Text(
                'Déconnecter',
                style: TextStyle(color: AppColor.black),
              ),
              leading: Icon(Icons.logout, color: AppColor.black),
            
    onTap: () {
                     Get.defaultDialog(
                  title: '95'.tr,
            content: Column(children: [
              Wrap(
                children: [
                  Text("98".tr),
                  Text("91".tr),
                ],
              ),
           
           ],),  
            actions: [
              MaterialButton(onPressed:() {Get.back();},child: Text('No',style: TextStyle(color: Colors.red),),),               
              MaterialButton(onPressed:() {
                     controller.logouat();
                    //  Get.back();
              },child: Text('96'.tr,style: TextStyle(color: Colors.green),),)                 
              ]
                );
              },
            ),
          ]),
        ));
  }
}
