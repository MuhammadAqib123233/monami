import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monami/controller/prof/productdetails_cont.dart';
import 'package:monami/core/constant/colorApp.dart';
import 'package:monami/linkapi.dart';
import 'package:monami/view/widget/cstmappbar1.dart';
import 'package:monami/view/widget/profile/SujetsFavorite.dart';
import 'package:video_player/video_player.dart';

class usersprofileDetails extends StatefulWidget {
  const usersprofileDetails({super.key});
  @override
  State<usersprofileDetails> createState() => _usersprofileDetailsState();
}

class _usersprofileDetailsState extends State<usersprofileDetails> {
  late VideoPlayerController _controller;
  @override
  void initState() {
    _controller = VideoPlayerController.asset('assets/video4.mp4')
      ..initialize().then((_) {
        setState(() {
        });
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    usersprofileControllerImp controller =
        Get.put(usersprofileControllerImp());
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      child: ListView(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(children: [
              Cstmappbarauth(
                titleappbar: 'titleappbar',
                onPressedMyfavorite: () {},
              ),
              Stack(
                children: [
                  content(),
                  Center(
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                          margin: EdgeInsets.only(left: 150, top: 220),
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
                                Center(
               
                      child: Container(
                          margin: EdgeInsets.only(left: 10, top: 90),
                          height: 30,
                          width: 50,
                         child:Container(
                    
                    width: 50,
                    height: 50,
                    child: IconButton(onPressed: () {
                      setState(() {
                             _controller.value.isPlaying
                                ? _controller.pause()
                                : _controller.play();
                      });
                    }, icon: Icon( _controller.value.isPlaying ? Icons.pause_circle_outline : Icons.play_circle , color: AppColor.buttommonami,size: 40, ),
                     ),
                  ), 
                         
                              
                          ),
                    
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 50, left: 15),
                    width: 156,
                    height: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                              '${AppLink.imagesprof}/${controller.usersmodel.usersImage}',
                            ),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25.0),
                          bottomRight: Radius.circular(25.0),
                          topRight: Radius.circular(25.0),
                          bottomLeft: Radius.circular(25.0),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: AppColor.black.withOpacity(0.4),
                            spreadRadius: 2,
                            blurRadius: 7,
                            offset: Offset(0, 4), // changes position of shadow
                          ),
                        ],
                        border: Border.all(color: AppColor.white, width: 3)),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 30),
                              child: Text(
                                "M.${controller.usersmodel.usersName}",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: AppColor.black,
                                    fontFamily: "Cairo"),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                                margin: EdgeInsets.only(left: 5),
                                child: Text(
                                  "${controller.usersmodel.usersCuntry}",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w300),
                                )),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${controller.usersmodel.usersAge} ans",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: 30),
                  child: Text(
                    "Niveau de la langue :",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: AppColor.black),
                  )),
              Container(
                margin: EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    ...List.generate(
                        5,
                        ((index) => Icon(
                              Icons.star_outlined,
                              size: 15,
                              color: Color.fromRGBO(249, 186, 92, 1),
                            )))
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: 30),
                  child: Text(
                    "Description :",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: AppColor.black),
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                  padding: EdgeInsets.only(left: 40, right: 30),
                  child: Text(
                    "${controller.usersmodel.usersDesc}",
                    style: TextStyle(color: Colors.grey),
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: 30),
                  child: Text(
                    'Mes sujets favoris :',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  )),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Wrap(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Sujetsfavoriteprofile(titleappbar: "Sport"),
                    Sujetsfavoriteprofile(titleappbar: "Problemes sociaux"),
                    Sujetsfavoriteprofile(titleappbar: "Voyage"),
                    Sujetsfavoriteprofile(titleappbar: "Cuisine"),
                    Sujetsfavoriteprofile(titleappbar: "shoping"),
                    Sujetsfavoriteprofile(titleappbar: "Les histoi"),
                    Sujetsfavoriteprofile(titleappbar: "Curture générale"),
                    Sujetsfavoriteprofile(titleappbar: "fitness et santé "),
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
    ));
  }

  content() {
    return Container(
      width: double.infinity,
      height: 200,
      child: VideoPlayer(_controller),
    );
  }
}
