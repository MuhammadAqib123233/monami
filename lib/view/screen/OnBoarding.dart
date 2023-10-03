// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monami/controller/onboarding%20controller.dart';
import 'package:monami/view/widget/onboarding/cstmbotton.dart';
import 'package:monami/view/widget/onboarding/cstmdot.dart';
import 'package:monami/view/widget/onboarding/cstmslider.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          const Expanded(
            flex: 3,
            child: cstmslider(),
          ),
          Expanded(
              flex: 1,
              child: Column(
                children: const [
                  cstmdot(),
                  Spacer(
                    flex: 2,
                  ),
                  cstmbottomOn(
                    
                  )
                ],
              ))
        ],
      ),
    ));
  }
}
