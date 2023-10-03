import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monami/core/constant/routes.dart';
import 'package:monami/core/localization/changelocal.dart';
import 'package:monami/view/widget/language/cstmlanguage.dart';

// import '../locale/localecontroller.dart';
class language extends GetView<LocalController> {
  const language({super.key});
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    LocalController controllerlang = Get.find();
    return Scaffold(

      body: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("1".tr, style: Theme.of(context).textTheme.
      // ignore: deprecated_member_use
              headline1),
              const SizedBox(height: 20),
              CustomButtonLang(
                  textbutton: "Ar",
                  onPressed: () {
                    controller.changelang("ar");
                    Get.toNamed(AppRoutes.onBoarding);
                  }),
              CustomButtonLang(
                  textbutton: "En",
                  onPressed: () {
                    controller.changelang("en");
                    Get.toNamed(AppRoutes.onBoarding);
                  }),
            ],
          )),
    );
  }
}
