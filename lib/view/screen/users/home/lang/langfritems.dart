import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monami/controller/users/favoret_controller.dart';
import 'package:monami/controller/prof/lang/vplangfr_controller.dart';
import 'package:monami/core/class/handlingDataview.dart';
import 'package:monami/core/constant/colorApp.dart';
import 'package:monami/data/model/profModel.dart';
import 'package:monami/view/widget/Skelton_Loading/NewCard.dart';
import 'package:monami/view/widget/Skelton_Loading/constants.dart';
import 'package:monami/view/widget/lang/langfr.dart';



class prlnt_Fr extends StatefulWidget {
  const prlnt_Fr({Key? key}) : super(key: key);

  @override
  State<prlnt_Fr> createState() => _prlnt_FrState();
}

class _prlnt_FrState extends State<prlnt_Fr> {
  late bool _isLoading;

  @override
  void initState() {
    _isLoading = true;
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _isLoading = false;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
   Get.put(viewpluslangfrImp());
       Favoritecontroller controllerfav = Get.put(Favoritecontroller());
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        centerTitle: true,
        title: Text(
          "Parlant Français",
          style: TextStyle(
            color: AppColor.buttommonami,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 5,
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
      backgroundColor: Color.fromARGB(244, 254, 250, 250),
      body: Container(
        color: Color.fromARGB(244, 255, 255, 255),
        child: ListView(
          children: [
            GetBuilder<viewpluslangfrImp>(
                builder: (controller) => handlingDataView(
                      statusRequest: controller.statusRequest,
                      widget: ListView.builder(
                          itemCount: controller.data.length,
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            controllerfav.isFavorite[controller.data[index]['prof_id']] = controller.data[index]['favorie'] ;
                            return
                              Container(
          color: AppColor.white,
                 child: _isLoading
              ? ListView.separated(
                  itemCount: 5,
                  itemBuilder: (context, index) =>  NewsCardSkelton(),
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: defaultPadding),
                ):
                               cstmLangfr(
                                profmodel:
                                    profModel.fromJson(controller.data[index]),
                              ),
                            );
                          }),
               ))
          ],
        ),
      ),
    );
  }
}