
import 'package:flutter/material.dart';
import 'package:monami/core/constant/colorApp.dart';
import 'package:monami/view/widget/profile/SujetsFavorite.dart';

class profile_prof extends StatefulWidget {
  const profile_prof({Key? key}) : super(key: key);

  @override
  State<profile_prof> createState() => _profile_profState();
}

class _profile_profState extends State<profile_prof> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Profile ',
            style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: (() {
              Navigator.of(context).pop();
            }),
          ),
        ),
        body: Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(children: [
              Stack(
                children: [
                   Container(
                    width: double.infinity,
                    height: 200,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Colors.white,
                            Color.fromARGB(255, 255, 239, 215),
                            AppColor.primaryColormonami,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(60),
                          bottomRight: Radius.circular(60)),
                    ),
                  ),
                  Center(
                    child: InkWell(
                      onTap: () {
                        // Get.toNamed(AppRoutes.editprofile);
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 250),
                        height: 20,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(60),
                              bottomRight: Radius.circular(60),
                              topRight: Radius.circular(60),
                              topLeft: Radius.circular(60)),
                          border: Border.all(
                              width: 1, color: Color.fromARGB(255, 255, 0, 30)),
                        ),
                        child: Center(child: Text("Edit Prfile")),
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 290),
                      height: 0.5,
                      width: double.infinity,
                      decoration: const BoxDecoration(color: AppColor.grey)),
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 40),
                      width: 150,
                      height: 200,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("images/me.png"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16.0),
                            bottomRight: Radius.circular(16.0),
                            topRight: Radius.circular(16.0),
                            bottomLeft: Radius.circular(16.0),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: AppColor.black.withOpacity(0.1),
                              spreadRadius: 2,
                              blurRadius: 4,
                              offset:
                                  Offset(0, 4), // changes position of shadow
                            ),
                          ],
                          border: Border.all(color: AppColor.white, width: 3)),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Text(
                        'M.Desond',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: "Cairo",
                            fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                    width: 25,
                  ),
                  CircleAvatar(
                    radius: 8,
                    backgroundImage: AssetImage("images/brazil.png"),
                  ),
                ],
              ),
              Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: 35),
                  child: Text(
                    "Français",
                    style: TextStyle(
                        color: Colors.blueGrey, fontWeight: FontWeight.w300),
                  )),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.star,
                        color: Color.fromRGBO(249, 186, 92, 1),
                      ),
                      onPressed: () {},
                    ),
                    Text('4.5')
                  ],
                ),
              ),
              Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: 30),
                  child: Text(
                    "Description :",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColor.buttommonami),
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                  padding: EdgeInsets.only(left: 40, right: 30),
                  child: Text(
                    "En linguistique et en grammaire, la personne représente le trait grammatical décrivant le rôle qu'occupent les acteurs d'un dialogue. Les verbes, les déterminants et pronoms personnels, principalement,sont concernés par la distinction de person",
                    style: TextStyle(color: Colors.grey),
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: 30),
                  child: Text(
                    'Ses Sujets Favoris :',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  )),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Sujetsfavoriteprofile(titleappbar: "Sport"),
                        Sujetsfavoriteprofile(titleappbar: "Problemes sociaux"),
                        Sujetsfavoriteprofile(titleappbar: "Voyage"),
                        Sujetsfavoriteprofile(titleappbar: "Cuisine"),
                      ],
                    ),
                  )),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Sujetsfavoriteprofile(titleappbar: "shoping"),
                        Sujetsfavoriteprofile(titleappbar: "Les histoi"),
                        Sujetsfavoriteprofile(titleappbar: "Curture générale"),
                        Sujetsfavoriteprofile(titleappbar: "fitness et santé "),
                      ],
                    ),
                  )),
            ]),
          ),
        ));
  }
}
