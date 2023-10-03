
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monami/core/constant/colorApp.dart';
import 'package:monami/core/localization/changelocal.dart';



class language extends StatefulWidget {
  const language({Key? key}) : super(key: key);
  @override
  State<language> createState() => _languageState();
}

class _languageState extends State<language> {

  @override
  Widget build(BuildContext context) {
      LocalController controllerlang = Get.find();
    return Scaffold(
          appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        centerTitle: true,
        title: Text(
           'language',
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
          margin: EdgeInsets.symmetric(horizontal: 5),
          color: Colors.white,
          child: Wrap(children: [
            ListTile(
              title: Text("90".tr),
              subtitle: Text("90".tr),
              trailing: Icon(Icons.chevron_right),
              onTap: () {

                Get.defaultDialog(
                  title: '95'.tr,
            content: Column(children: [
              Wrap(
                children: [
                  Text("98".tr),
                  Text("90".tr),
                ],
              ),
           
           ],),  
            actions: [
              MaterialButton(onPressed:() {Get.back();},child: Text('No',style: TextStyle(color: Colors.red),),),               
              MaterialButton(onPressed:() {
                     controllerlang.changelang('ar');
                     Get.back();
              },child: Text('96'.tr,style: TextStyle(color: Colors.green),),)                 
              ]
                );
      
              
            },),
              ListTile(
              title: Text("91".tr),
              subtitle: Text("91".tr),
              trailing: Icon(Icons.chevron_right),
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
                            controllerlang.changelang('en');
                     Get.back();
              },child: Text('96'.tr,style: TextStyle(color: Colors.green),),)                 
              ]
                );
            },),  ListTile(
              title: Text("92".tr),
              subtitle: Text("92".tr),
              trailing: Icon(Icons.chevron_right),
              onTap: () {             
                  Get.defaultDialog(
                  title: '95'.tr,
            content: Column(children: [
              Wrap(
                children: [
                  Text("98".tr),
                  Text("92".tr),
                ],
              ),
           
           ],),  
            actions: [
              MaterialButton(onPressed:() {Get.back();},child: Text('No',style: TextStyle(color: Colors.red),),),               
              MaterialButton(onPressed:() {
                    controllerlang.changelang('fr');
                     Get.back();
              },child: Text('96'.tr,style: TextStyle(color: Colors.green),),)                 
              ]
                );
            },),  
            
            ListTile(
              title: Text("93".tr), 
              subtitle: Text("93".tr),
              trailing: Icon(Icons.chevron_right),
              onTap: () {
               Get.defaultDialog(
                  title: '95'.tr,
            content: Column(children: [
              Wrap(
                children: [
                  Text("98".tr),
                  Text("93".tr),
                ],
              ),
           
           ],),  
            actions: [
              MaterialButton(onPressed:() {Get.back();},child: Text('No',style: TextStyle(color: Colors.red),),),               
              MaterialButton(onPressed:() {
                    controllerlang.changelang('es');
                     Get.back();
              },child: Text('96'.tr,style: TextStyle(color: Colors.green),),)                 
              ]
                );
            },),  

                        ListTile(
              title: Text("88".tr), 
              subtitle: Text("88".tr),
              trailing: Icon(Icons.chevron_right),
              onTap: () {
               Get.defaultDialog(
                  title: '95'.tr,
            content: Column(children: [
              Wrap(
                children: [
                  Text("98".tr),
                  Text("88".tr),
                ],
              ),
           
           ],),  
            actions: [
              MaterialButton(onPressed:() {Get.back();},child: Text('No',style: TextStyle(color: Colors.red),),),               
              MaterialButton(onPressed:() {
                    controllerlang.changelang('pr');
                     Get.back();
              },child: Text('96'.tr,style: TextStyle(color: Colors.green),),)                 
              ]
                );
            },),  
              ListTile(
               
              title: Text("89".tr), 
              subtitle: Text("89".tr),
              trailing: Icon(Icons.chevron_right),
              onTap: () {
               Get.defaultDialog(
                  title: '95'.tr,
            content: Column(children: [
              Wrap(
                children: [
                  Text("98".tr),
                  Text("89".tr),
                ],
              ),
           
           ],),  
            actions: [
              MaterialButton(onPressed:() {Get.back();},child: Text('No',style: TextStyle(color: Colors.red),),),               
              MaterialButton(onPressed:() {
                    controllerlang.changelang('ja');
                     Get.back();
              },child: Text('96'.tr,style: TextStyle(color: Colors.green),),)                 
              ]
                );
            },),  
                        ListTile(
              title: Text("94".tr), 
              subtitle: Text("94".tr),
              trailing: Icon(Icons.chevron_right),
              onTap: () {
               Get.defaultDialog(
                  title: '95'.tr,
            content: Column(children: [
              Wrap(
                children: [
                  Text("98".tr),
                  Text("94".tr),
                ],
              ),
           
           ],),  
            actions: [
              MaterialButton(onPressed:() {Get.back();},child: Text('No',style: TextStyle(color: Colors.red),),),               
              MaterialButton(onPressed:() {
                    controllerlang.changelang('it');
                     Get.back();
              },child: Text('96'.tr,style: TextStyle(color: Colors.green),),)                 
              ]
                );
            },),  
          ]),
        ));
  }
}