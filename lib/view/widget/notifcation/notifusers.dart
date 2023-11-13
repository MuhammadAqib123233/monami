import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monami/controller/users/notifusers.dart';
import 'package:monami/data/model/profModel.dart';

class testitems extends GetView<SendNotificationcontroller> {
  const testitems({super.key});
  @override
  Widget build(BuildContext context) {
    SendNotificationcontroller controller = Get.put(SendNotificationcontroller());
    return Container(
      color: Colors.black,
      height: 50,
      width: 50,
      child: ListView.separated(
          separatorBuilder: (context, index) => SizedBox(
                width: 10,
              ),
          itemCount: controller.data.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) {
            return test(profmodel: profModel.fromJson(controller.data[index]));
          })),
    );
  }
}

class test extends StatelessWidget {
  final profModel profmodel;
  const test({
    super.key,
    required this.profmodel,
  });

  @override
  Widget build(BuildContext context) {
    SendNotificationcontroller controller = Get.put(SendNotificationcontroller());

    return Container(
      child: InkWell(
        onTap: () {
          controller.adddata(profmodel.profId! as String);
        },
      ),
    );
  }
}
