import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:monami/controller/users/auth/Login_controller.dart';
import 'package:monami/core/class/statusrequest.dart';
import 'package:monami/core/constant/colorApp.dart';
import 'package:monami/core/constant/imagessets.dart';
import 'package:monami/core/constant/routes.dart';
import 'package:monami/core/function/alertexitapp.dart';
import 'package:monami/view/widget/auth/LogoAuth.dart';
import 'package:monami/view/widget/auth/cstmBottomAuth.dart';
import 'package:monami/view/widget/auth/cstmTextAuth.dart';

class chesirLogin extends StatelessWidget {
  const chesirLogin({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LogincontrollerImp());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.white,

          elevation: 0,
          centerTitle: true,
          flexibleSpace: Container(
          // backgroundColor: AppColor.white,
              margin: EdgeInsets.only(top: 50),
              height: 180,
              width: 250,
              decoration: const BoxDecoration(
                color: AppColor.white,
                image: DecorationImage(
                    image: AssetImage('images/monami.png'),
                    fit: BoxFit.fitHeight),
                // gradient: LinearGradient(
                //   colors: [ Color.fromARGB(255, 241, 199, 135),Color.fromARGB(255, 241, 199, 135)],
                //   begin: Alignment.bottomLeft,
                //   end: Alignment.bottomRight
                //   )
              )),
        ),
        body: WillPopScope(
            onWillPop: alertExitApp,
            child: GetBuilder<LogincontrollerImp>(
              builder: (controller) =>
                  controller.statusRequest == StatusRequest.loading
                      ? Center(
                          child: Lottie.asset(AppImageAsset.loading,
                              width: 250, height: 250))
                      : Container(
                        color: AppColor.white,
                     
                          padding: const EdgeInsets.symmetric(horizontal: 0),
                          child: Form(
                            key: controller.formstate,
                            child: ListView(
                              children: [
                                const SizedBox(height: 50),
                                const Logochesir(),
                                const SizedBox(height: 50),
                                const cstmTextchesir(
                                  text: 'Choisir votre position',
                                ),
                                SizedBox(height: 20),
                                cstmBottomchesir(
                                  text: 'Instruit',
                                  onPressed: () {
                                    Get.offNamed(AppRoutes.login);
                                  },
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                cstmBottomchesir(
                                  text: 'Instituteur',
                                  onPressed: () {
                                    Get.offNamed(AppRoutes.LoginProf);
                                  },
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                // textsignuplogin(
                                //   textone: "don't have an account?",
                                //   texttwo: "Sing Up",
                                //   onTap: () {
                                //     controller.goToSingUp();
                                //   },
                                // ),

                                //                    Container(
                                //   margin: EdgeInsets.only(top: 12),
                                //   height: 190,
                                //   decoration: const BoxDecoration(
                                //       image: DecorationImage(
                                //           fit: BoxFit.fill, image: AssetImage('images/baner.png'))),
                                // )
                              ],
                            ),
                          )),
            )));
  }
}
