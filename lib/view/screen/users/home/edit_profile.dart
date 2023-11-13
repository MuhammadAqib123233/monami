import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:monami/controller/users/profile/editprofilecontroller.dart';
import 'package:monami/controller/users/profile/viewprofilecontroller.dart';
import 'package:monami/core/class/handlingDataview.dart';
import 'package:monami/core/class/statusrequest.dart';
import 'package:monami/core/constant/colorApp.dart';
import 'package:monami/core/constant/imagessets.dart';
import 'package:monami/linkapi.dart';
import 'package:monami/view/widget/auth/cstmBottomAuth.dart';
import 'package:monami/view/widget/users/cstmedataTextForm.dart';

class editusersprofile extends StatelessWidget {
  const editusersprofile({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    userseditprofilecontrollerImp controller =
        Get.put(userseditprofilecontrollerImp());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          centerTitle: true,
          title: Text(
            "Edit Profile",
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
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                height: 255,
                width: double.infinity,
                child: ListView(
                  children: [
                    Column(children: [
                      Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 200,
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                    Colors.white,
                                    Color.fromARGB(160, 255, 239, 215),
                                    Color.fromARGB(168, 238, 205, 155),
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter),
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(60),
                                  bottomRight: Radius.circular(60)),
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(top: 290),
                              height: 0.5,
                              width: double.infinity,
                              decoration:
                                   BoxDecoration(
                                    color: AppColor.grey)),
                          Container(
                            height: 250,
                            child: GetBuilder<usersprofilecontrollerImp>(
                                builder: (controller) => handlingDataView(
                                    statusRequest: controller.statusRequest,
                                    widget: ListView.builder(
                                        itemCount: controller.data.length,
                                        itemBuilder: (context, index) {
                                          return Center(
                                            child: Container(
                                              margin: EdgeInsets.only(top: 40),
                                              width: 150,
                                              height: 200,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: NetworkImage(
                                                        '${AppLink.imagesprof}/${controller.data[index].usersImage}',
                                                      ),
                                                      fit: BoxFit.cover),
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(16.0),
                                                    bottomRight:
                                                        Radius.circular(16.0),
                                                    topRight:
                                                        Radius.circular(16.0),
                                                    bottomLeft:
                                                        Radius.circular(16.0),
                                                  ),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: AppColor.black
                                                          .withOpacity(0.1),
                                                      spreadRadius: 2,
                                                      blurRadius: 4,
                                                      offset: Offset(0,
                                                          4), // changes position of shadow
                                                    ),
                                                  ],
                                                  border: Border.all(
                                                      color: AppColor.white,
                                                      width: 3)),
                                            ),
                                          );
                                        }))),
                          ),
                          Container(
                            child: GetBuilder<userseditprofilecontrollerImp>(
                              builder: (controller) =>
                                  controller.statusRequest ==
                                          StatusRequest.loading
                                      ? Center(
                                          child: Lottie.asset(
                                          AppImageAsset.loading,
                                        ))
                                      : InkWell(
                                          onTap: () {
                                            controller.showOptionImage();
                                          },
                                          child: Container(
                                            height: 30,
                                            width: 30,
                                            margin: EdgeInsets.only(
                                                top: 215, left: 245),
                                            decoration: BoxDecoration(
                                                color: AppColor.white,
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        "images/Camera.png")),
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: AppColor.black
                                                        .withOpacity(0.1),
                                                    spreadRadius: 2,
                                                    blurRadius: 4,
                                                    offset: Offset(0,
                                                        4), // changes position of shadow
                                                  ),
                                                ],
                                                border: Border.all(
                                                    color: AppColor.white,
                                                    width: 3)),
                                          ),
                                        ),
                            ),
                          ),
                          Container(
                            height: 250,
                            child: GetBuilder<userseditprofilecontrollerImp>(
                              builder: (controller) => controller
                                          .statusRequest ==
                                      StatusRequest.loading
                                  ? Center(
                                      child: Lottie.asset(AppImageAsset.loading,
                                          width: 250, height: 250))
                                  : Center(
                                      child: Stack(
                                        children: [
                                          if (controller.file != null)
                                            Container(
                                              margin: EdgeInsets.only(top: 40),
                                              width: 153,
                                              height: 253,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: FileImage(
                                                          controller.file!)),
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(16.0),
                                                    bottomRight:
                                                        Radius.circular(16.0),
                                                    topRight:
                                                        Radius.circular(16.0),
                                                    bottomLeft:
                                                        Radius.circular(16.0),
                                                  ),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: AppColor.black
                                                          .withOpacity(0.1),
                                                      spreadRadius: 2,
                                                      blurRadius: 4,
                                                      offset: Offset(0,
                                                          4), // changes position of shadow
                                                    ),
                                                  ],
                                                  border: Border.all(
                                                      color: AppColor.white,
                                                      width: 3)),
                                            ),
                                        ],
                                      ),
                                    ),
                            ),
                          ),
                        ],
                      ),
                    ])
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  height: 400,
                  child: GetBuilder<userseditprofilecontrollerImp>(
                      builder: (controller) => controller.statusRequest ==
                              StatusRequest.loading
                          ? Center(
                              child: Lottie.asset(AppImageAsset.loading,
                                  width: 250, height: 250))
                          : Container(
                              child: Form(
                                key: controller.formstate,
                                child: ListView(
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      child: Row(
                                        children: [
                                          cstmedataTextForm1(
                                            ObscureText: false,
                                            hinttext: 'Enter Your Nom',
                                            labeltext: ' Nom :',
                                            iconData: Icons.person,
                                            mycontroller: controller.username,
                                            // mycontroller: mycontroller
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          cstmedataTextForm1(
                                            ObscureText: false,

                                            hinttext: 'Enter Your Age',
                                            labeltext: ' Age :',
                                            iconData: Icons.person,
                                            mycontroller: controller.age,
                                            // mycontroller: mycontroller
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    cstmedataTextForm3(
                                      ObscureText: false,

                                      hinttext: 'Enter Your Pays',
                                      labeltext: ' Pays :',
                                      iconData: Icons.person,
                                      mycontroller: controller.cuntry,
                                      // mycontroller: mycontroller
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    cstmedataTextForm2(
                                      ObscureText: false,
                                      hinttext: 'Enter Your Description ',
                                      labeltext: 'Description :',
                                      iconData: Icons.person,
                                      mycontroller: controller.desc,
                                      // mycontroller: mycontroller.
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    cstmBottomAuth(
                                      text: 'Continue',
                                      onPressed: () {
                                        controller.editedata();
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            )),
                ),
              ),
            ],
          ),
        ));
  }
}
