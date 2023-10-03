import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:monami/core/constant/colorApp.dart';

imageUploadCamera() async {
  final PickedFile? file = await ImagePicker()
      .getImage(source: ImageSource.camera, imageQuality: 90);
  if (file != null) {
    return File(file.path);
  }
  {
    return null;
  }
}

fileUploadGallery([isSvg = false]) async {
  FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions:
          isSvg ? ["svg", "SVG"] : ["PNG", "png", "jpg", "jpeg", "gif"]);
  if (result != null) {
    return File(result.files.single.path!);
  }
  {
    return null;
  }
}

showbottommenu(
  imageUploadCamera(),
  fileUploadGallery(),
) {
  Get.bottomSheet(Directionality(
      textDirection: TextDirection.ltr,
      child: Container(
        padding: EdgeInsets.all(10),
        height: 150,
        decoration: BoxDecoration(
            color: AppColor.white,
            boxShadow: [
              BoxShadow(
                color: AppColor.black.withOpacity(0.1),
                spreadRadius: 2,
                blurRadius: 4,
                offset: Offset(0, 4), // changes position of shadow
              ),
            ],
            border: Border.all(color: AppColor.white, width: 3)),
        child: Column(
          children: <Widget>[
            Container(alignment: Alignment.topLeft,
              child: Text('Profile photo',style: TextStyle(fontSize: 15,fontFamily: 'Cairo' , fontWeight: FontWeight.bold),),
            ),
            SizedBox(
              height: 10,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
               InkWell(
                onTap: () {
                  imageUploadCamera();
                },
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: AppColor.white,
                            image: DecorationImage(
                                image: AssetImage("images/Camera.png")),
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                color: AppColor.black.withOpacity(0.1),
                                spreadRadius: 2,
                                blurRadius: 4,
                                offset:
                                    Offset(0, 4), // changes position of shadow
                              ),
                            ],
                            border: Border.all(
                                color: AppColor.buttommonami.withOpacity(0.3),
                                width: 1)),
                      ),
                      Container(child: Text('Camera',style: TextStyle(fontSize: 15 , fontWeight: FontWeight.bold),)),
                    ],  
                  ),
                ),
              ),
               InkWell(
                onTap: () {
                  fileUploadGallery();
                },
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: AppColor.white,
                            image: DecorationImage(
                                image: AssetImage("images/Gallery.png")),
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                color: AppColor.black.withOpacity(0.1),
                                spreadRadius: 2,
                                blurRadius: 4,
                                offset:
                                    Offset(0, 4), // changes position of shadow
                              ),
                            ],
                            border: Border.all(
                                color: AppColor.buttommonami.withOpacity(0.3),
                                width: 1)),
                      ),
                      Container(child: Text('Gallery',style: TextStyle(fontSize: 15,fontFamily: 'Cairo' , fontWeight: FontWeight.bold),)),
                    
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  imageUploadCamera();
                },
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: AppColor.white,
                            image: DecorationImage(
                                image: AssetImage("images/Delete.png"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                color: AppColor.black.withOpacity(0.1),
                                spreadRadius: 2,
                                blurRadius: 4,
                                offset:
                                    Offset(0, 4), // changes position of shadow
                              ),
                            ],
                            border: Border.all(
                                color: AppColor.buttommonami.withOpacity(0.3),
                                width: 1)),
                      ),
                                        Container(child: Text('Delete',style: TextStyle(fontSize: 15,fontFamily: 'Cairo' , fontWeight: FontWeight.bold),)),
                    ],
                  ),
                ),
              ),
              // ListTile(
              //   onTap: () {
              //     imageUploadCamera();
              //     Get.back();
              //   },
              //   leading: Icon(Icons.camera_alt_outlined),
              //   title: Text("Camera"),
              // ),
              // ListTile(
              //   onTap: () {
              //     fileUploadGallery();
              //     Get.back();
              //   },
              //   leading: Icon(Icons.photo),
              //   title: Text("Gallery"),
              // ),
            ]),
          ],
        ),
      )));
}
