import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:monami/controller/onboarding%20controller.dart';
import 'package:monami/data/datasource/static/static.dart';

// ignore: camel_case_types
class cstmdot extends StatelessWidget {
  const cstmdot({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
        builder: (controller) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                    onBoardingList.length,
                    (index) => AnimatedContainer(
                          margin: const EdgeInsets.only(right: 5),
                          duration: const Duration(milliseconds: 200),
                          width: controller.currentPage == index ? 20 : 5,
                          height: 6,
                          decoration:
                              const BoxDecoration(color: Colors.blueAccent),
                        ))
              ],
            ));
  }
}
