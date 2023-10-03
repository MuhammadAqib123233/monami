import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:monami/controller/users/verfiycodesignup.dart';
import 'package:monami/core/class/statusrequest.dart';
import 'package:monami/core/constant/colorApp.dart';
import 'package:monami/core/constant/imagessets.dart';
import 'package:monami/view/widget/auth/cstmTextBodyAuth.dart';


class Verfiycodesignup extends StatelessWidget {
  const Verfiycodesignup({super.key});

  @override
  Widget build(BuildContext context) {

    
     Get.put(VerfiycodesignupcontrollerImp());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColor.primaryColormonami,
          elevation: 0,
          title: Text('Verfication Code',
              style: Theme.of(context)
                  .textTheme
      // ignore: deprecated_member_use
                  .headline1!
                  .copyWith(color: AppColor.grey)),
        ),
        body: GetBuilder<VerfiycodesignupcontrollerImp>(builder: (controller) =>
          controller.statusRequest == StatusRequest.loading ?
           Center(child: Lottie.asset(AppImageAsset.loading ,width: 250 ,height: 250))
         :  Container(
          color: AppColor.primaryColormonami,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(children: [
          const SizedBox(height: 20),
          const cstmTextBodyAuth(text: "Check code"),
          const SizedBox(height: 10),
         cstmTextBodyAuth(
              text: "Please Enter The Digit Code Sent To ${controller.email}"),
          const SizedBox(height: 15),
          OtpTextField(
            fieldWidth: 50.0,
            borderRadius: BorderRadius.circular(20),
            numberOfFields: 5,
            borderColor: const Color(0xFF512DA8),
            //set to true to show as box or false to show as dash
            showFieldAsBox: true,
            //runs when a code is typed in
            onCodeChanged: (String code) {
              //handle validation or checks here
            },
            //runs when every textfield is filled
            onSubmit: (String verificationCode) {
              controller.goToSuccessSignup(verificationCode);
            }, // end onSubmit
          ),
          const SizedBox(height: 40),
        ]),
      ),),
            );
  }
}


// 3 min