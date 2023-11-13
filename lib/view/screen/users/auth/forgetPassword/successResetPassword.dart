import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:monami/controller/users/auth/successResetpasword_controller.dart';
import 'package:monami/core/constant/colorApp.dart';
import 'package:monami/view/widget/auth/cstmBottomAuth.dart';

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessResetPasswordcontrollerImp controller =
        Get.put(SuccessResetPasswordcontrollerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.white,
        elevation: 0,
        title: Text('Success Signup',
            style: Theme.of(context)
                .textTheme
      // ignore: deprecated_member_use
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Center(
                child: Icon(Icons.check_circle_outline_rounded,
                    size: 200, color: AppColor.greenBoys),
              ),
              const Spacer(),
              Container(
                width: double.infinity,
                child: cstmBottomAuth(
                  text: 'Go To Login',
                  onPressed: () {
                    controller.goToPageLogin();
                  },
                ),
              ),
              const SizedBox(
                height: 40,
              )
            ],
          )),
    );
  }
}
