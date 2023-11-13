import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monami/controller/users/Config/servise.controller.dart';
import 'package:monami/core/constant/colorApp.dart';
import 'package:monami/core/function/validinput.dart';
import 'package:url_launcher/url_launcher.dart';

class serviceClients extends StatefulWidget {
  const serviceClients({super.key});

  @override
  State<serviceClients> createState() => _serviceClientsState();
}

class _serviceClientsState extends State<serviceClients> {
  ServiceClientsImp controller = Get.put(ServiceClientsImp());
  String dropdownValue = "Type de service";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        centerTitle: true,
        title: Text(
          "Service clients",
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
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        color: AppColor.white,
        child: ListView(children: [
          Container(
            decoration: BoxDecoration(
                color: AppColor.buttommonami,
                borderRadius: BorderRadius.circular(30)),
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Center(
              child: DropdownButton<String>(
                  value: dropdownValue,
                  elevation: 0,
                  isExpanded: true,
                  dropdownColor: AppColor.buttommonami,
                  borderRadius: BorderRadius.circular(30),
                  icon: Icon(Icons.arrow_downward),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                    });
                  },
                  items: [
                    DropdownMenuItem(
                      child: Text(
                        "Type de service",
                        style: TextStyle(color: AppColor.white, fontSize: 20),
                      ),
                      value: "Type de service",
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "Service technique",
                        style: TextStyle(color: AppColor.white, fontSize: 20),
                      ),
                      value: "Service technique",
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "Service personnel",
                        style: TextStyle(color: AppColor.white, fontSize: 20),
                      ),
                      value: "Service personnel",
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "Proposition de divelopement",
                        style: TextStyle(color: AppColor.white, fontSize: 20),
                      ),
                      value: "Proposition de divelopement",
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "pour l’abonnement",
                        style: TextStyle(color: AppColor.white, fontSize: 20),
                      ),
                      value: "pour l’abonnement",
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "Autre Servive",
                        style: TextStyle(color: AppColor.white, fontSize: 20),
                      ),
                      value: "Autre Servive",
                    ),
                  ]),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Text(
              "écrivez vous damande  ",
              style: TextStyle(
                  color: AppColor.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 340,
            width: MediaQuery.of(context).size.width * 0.5,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Form(
              key: controller.formstate,
              child: TextFormField(
                validator: (val) {
                  return ValidInput(val!, 5, 100, 'username');
                },
                controller: controller.body,
                decoration: InputDecoration(
                    hintText: "",
                    hintStyle: TextStyle(fontSize: 12),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 150, horizontal: 20),
                    label: Text(
                      "suje    ?",
                      style: TextStyle(
                          color: AppColor.black, fontWeight: FontWeight.w700),
                    ),
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)))),
              ),
            ),
          ),
          Center(
            child: InkWell(
              onTap: () {
                controller.send();
              },
              child: Container(
                child: Center(
                    child: Text(
                  'envoyer ',
                  style: TextStyle(
                      color: AppColor.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )),
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                    color: AppColor.buttommonami,
                    borderRadius: BorderRadius.circular(15)),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Text(
              "contcter nous ",
              style: TextStyle(
                  color: AppColor.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 11),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    String? sendemail(Map<String, String> params) {
                      return params.entries
                          .map((MapEntry<String, String> e) =>
                              '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                          .join('&');
                    }

                    final Uri emailuri = Uri(
                      scheme: 'mailto',
                      path: 'monamiproject10@gmail.com',
                      query: sendemail(
                          <String, String>{'subject': 'hh', 'body': 'hh'}),
                    );
                    launchUrl(emailuri);
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.email,
                        size: 40,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'E-mail',
                        style: TextStyle(color: AppColor.black, fontSize: 20),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                InkWell(
                  onTap: () {
                    whatsapp();
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.call,
                        size: 40,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'WhatsApp',
                        style: TextStyle(
                          color: AppColor.black,
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }

  whatsapp() async {
    var contact = "+212698796458";
    var androidUrl = "whatsapp://send?phone=$contact&text=Hi, I need some help";
    var iosUrl =
        "https://wa.me/$contact?text=${Uri.parse('Hi, I need some help')}";

    try {
      if (Platform.isIOS) {
        await launchUrl(Uri.parse(iosUrl));
      } else {
        await launchUrl(Uri.parse(androidUrl));
      }
    } on Exception {}
  }
}
