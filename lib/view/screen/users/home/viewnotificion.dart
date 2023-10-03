import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monami/controller/users/notification_controller.dart';
import 'package:monami/core/class/handlingDataview.dart';
import 'package:monami/core/constant/colorApp.dart';
import 'package:monami/data/model/profModel.dart';
import 'package:monami/linkapi.dart';

class notifusers extends StatefulWidget {
  const notifusers({super.key});

  @override
  State<notifusers> createState() => _notifusersState();
}

class _notifusersState extends State<notifusers> {
  @override
  Widget build(BuildContext context) {
  NotificationController controller =  Get.put(NotificationController());
    return Scaffold(
      backgroundColor: Color.fromARGB(244, 254, 250, 250),
      body: Container(
                  padding: EdgeInsets.all(10),
                  child: ListView(children: [
                    Center(
                        child: Text(
                      "Notification",
                      style: TextStyle(
                          fontSize: 18,
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.bold),
                    )),
            RefreshIndicator(
                      onRefresh: () async {
                        await Future.delayed(
                          Duration(seconds: 1),
                        );
                        controller.getData();
                        setState(() {});
                      },
                      child: GetBuilder<NotificationController>(
                  builder: (controller) => handlingDataView(
                      statusRequest: controller.statusRequest,
                      widget: ListView.builder(
                            itemCount: controller.data.length,
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (BuildContext context, int index) {
                              // controllerfav.isFavorite[controller.data[index]['prof_id']] = controller.data[index]['favorie'] ;
                              return Container(
                                  child: notifusers1(
                               profmodel:
                                    profModel.fromJson(controller.data[index]),
                              ));
                            }),
                      )),
            ),
   ])   ),
    );
  }
}

class notifusers1 extends StatelessWidget {
  final profModel profmodel;
  const notifusers1({super.key, required this.profmodel});

  @override
  Widget build(BuildContext context) {
    Get.put(NotificationController());
    return Container(
      height: 100,
      child: GetBuilder<NotificationController>(
          builder: (controller) => handlingDataView(
              statusRequest: controller.statusRequest,
              widget: 
                    Column(
                      children: [
                        Row(
                          children: [
                           Row(
                             children: [
                                 Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                            '${AppLink.imagesprof}/${profmodel.profImage}',
                                          ),
                                          fit: BoxFit.fill),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30.0),
                                        bottomRight: Radius.circular(30.0),
                                        topRight: Radius.circular(30.0),
                                        bottomLeft: Radius.circular(30.0),
                                      ),
                                      border: Border.all(
                                          color: AppColor.green, width: 1)),
                                ),
                               Text('${profmodel.profName }',style: TextStyle(fontWeight: FontWeight.w500),),

                             ],
                           ),
                          
                          ],
                        ),
                         Text('Je vous attends.  Venez le rejoindre  pour réserver un appel vidéo'),
                      ],
                    ),
                    // Positioned(
                    //     right: 5,
                    //     child: Text(
                    //       "${Jiffy(controller.data[index]['notification_datetime'], "yyyy-MM-dd").fromNow()}",
                    //       style:const TextStyle(
                    //           color: AppColor.primaryColor,
                    //           fontWeight: FontWeight.bold),
                    //     ))
                  )),
    );
  }
}
