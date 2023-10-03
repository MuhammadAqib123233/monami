import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:monami/controller/users/auth/SignUp_controller.dart';
import 'package:monami/core/class/statusrequest.dart';
import 'package:monami/core/constant/colorApp.dart';
import 'package:monami/core/constant/imagessets.dart';
import 'package:monami/view/widget/auth/LogoAuth.dart';
import 'package:monami/view/widget/auth/cstmBottomAuth.dart';
import 'package:monami/view/widget/users/cstmedataTextForm.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SignUpcontrollerImp());
    return Scaffold(
 appBar: AppBar(
          backgroundColor: AppColor.white,

          elevation: 0,
          centerTitle: true,
          flexibleSpace: Container(
              margin: EdgeInsets.only(top: 50),
              height: 150,
              width: 200,
              decoration: const BoxDecoration(
                color: AppColor.white,
                image: DecorationImage(
                    image: AssetImage('images/monami.png'),
                    fit: BoxFit.fitHeight),
              )),
        ),
        body: 
     GetBuilder<SignUpcontrollerImp>(
        builder: (controller) =>
            controller.statusRequest == StatusRequest.loading
                ? Center(
                    child: Lottie.asset(AppImageAsset.loading,
                        width: 250, height: 250))
                : Container(
                  color: AppColor.white,
                    child: Form(
                      key: controller.formstate,
                      child: ListView(
                        children: [
                          const LogoAuthSingup(),
                          const SizedBox(height: 40),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              cstmedataTextForm1(
                                ObscureText: false,
                                hinttext: 'Enter Your Nom',
                                labeltext: ' Nom ',
                                iconData: Icons.person,
                                mycontroller: controller.name,
                                // mycontroller: mycontroller
                              ),
                              cstmedataTextForm1(
                                ObscureText: false,
                                hinttext: 'Enter Your Age',
                                labeltext: ' Age ',
                                iconData: Icons.person,
                                mycontroller: controller.age,
                                // mycontroller: mycontroller
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          cstmedataTextForm2(
                            ObscureText: false,
                          
                            mycontroller: controller.cuntry,
                            hinttext: 'Enter Your pays',
                            labeltext: ' pays',
                            iconData: Icons.person_outline,
                            // mycontroller: mycontroller
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          cstmedataTextForm2(
                            ObscureText: false,
                          
                            mycontroller: controller.email,
                            hinttext: 'Enter Your Email',
                            labeltext: ' Email',
                            iconData: Icons.email_outlined,
                            // mycontroller: mycontroller
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          cstmedataTextForm2(
                            ObscureText: false,
                           
                            mycontroller: controller.password,

                            hinttext: 'Enter Your Password',
                            labeltext: ' Password',
                            iconData: Icons.lock_open,
                            // mycontroller: mycontroller
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          cstmBottomchesir(
                            text: 'Sign Up',
                            onPressed: () {
                              controller.signUp();
                            },
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("You have an account?"),
                              InkWell(
                                onTap: () {
                                  controller.goToLogin();
                                },
                                child: Text(
                                  " Sing In ",
                                  style: TextStyle(
                                      color: AppColor.buttommonami,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
      ),
    );
  }
}
