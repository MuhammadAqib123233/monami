import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monami/controller/users/myfavoret_controller.dart';
import 'package:monami/core/class/handlingDataview.dart';
import 'package:monami/core/constant/colorApp.dart';
import 'package:monami/view/widget/favorite/cstmmyfavoriteitems.dart';

class MyFavorite extends StatefulWidget {
  const MyFavorite({super.key});

  @override
  State<MyFavorite> createState() => _MyFavoriteState();
}

class _MyFavoriteState extends State<MyFavorite> {
  @override
  Widget build(BuildContext context) {

    Get.put(MyFavoritecontroller());
    return Scaffold(
      backgroundColor: Color.fromARGB(244, 254, 250, 250),
      body: Container(
      color: AppColor.white,
        padding: EdgeInsets.all(5),
        child:  

            GetBuilder<MyFavoritecontroller>(
                builder: (controller) => handlingDataView(
                      statusRequest: controller.statusRequest,
                      widget:  Container(
               
                      child: RefreshIndicator(
                    onRefresh: () async {
                      await Future.delayed(
                        Duration(seconds: 1),
                      );
                      controller.getData();
                      setState(() {});
                    },
                    child: ListView(
          children: [
                         ListView.builder(
                            itemCount: controller.data.length,
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (BuildContext context, int index) {
                              // controllerfav.isFavorite[controller.data[index]['prof_id']] = controller.data[index]['favorie'] ;
                              return  controller.isactive ?
                                 Container(
                                child: CstmMyfavoriteprof(
                                  myfavoritemodel:controller.data[index], 
                                ),
                              ): Center(child: Container(
                                color: AppColor.black,
                                child: Text("data", style: TextStyle(color: AppColor.black),)))
                           ;
                            }),
                    ]  ),
                    )))
          
        ),
      ),
    );
  }
}