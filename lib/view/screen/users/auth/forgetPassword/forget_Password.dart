import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:monami/controller/users/forgetpassword/forget_Password_controller.dart';
import 'package:monami/core/class/statusrequest.dart';
import 'package:monami/core/constant/colorApp.dart';
import 'package:monami/core/constant/imagessets.dart';
import 'package:monami/view/widget/auth/cstmBottomAuth.dart';
import 'package:monami/view/widget/auth/cstmTextAuth.dart';
import 'package:monami/view/widget/auth/cstmTextBodyAuth.dart';
import 'package:monami/view/widget/auth/cstmTextFormauth.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
        Get.put(ForgetPasswordcontrollerImp());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColor.white,
          elevation: 0,
          title: Text('Forget Password',
              style: Theme.of(context)
                  .textTheme
      // ignore: deprecated_member_use
                  .headline1!
                  .copyWith(color: AppColor.grey)),
        ),
        body:GetBuilder<ForgetPasswordcontrollerImp>(builder: (controller) =>
           controller.statusRequest == StatusRequest.loading ?
           Center(child: Lottie.asset(AppImageAsset.loading ,width: 250 ,height: 250))
         :   Container(
            color: AppColor.white,
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            child: Form(
              key: controller.formstate,
              child: ListView(
                children: [
                  const SizedBox(height: 20),
                  const cstmTextAuth(text: 'Check Email'),
                  const SizedBox(height: 20),
                  const cstmTextBodyAuth(text: "Please Enter Your new password"),
                  const SizedBox(height: 20),
                  cstmTextFormAuth(
                    ObscureText: false,
                    // ignore: body_might_complete_normally_nullable
                    valid: (val) {},
                    mycontroller: controller.email,
                    hinttext: 'Enter Your Email',
                    labeltext: ' Email',
                    iconData: Icons.email_outlined,
                    // mycontroller: mycontroller
                  ),SizedBox(height: 20,),
                  cstmBottomAuth(
                    text: 'Check',
                    onPressed: () {
                      controller.checkemail();
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            )),));
  }
}
