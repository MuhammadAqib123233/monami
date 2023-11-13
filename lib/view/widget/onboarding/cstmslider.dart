import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monami/controller/onboarding%20controller.dart';

import 'package:monami/data/datasource/static/static.dart';

// ignore: camel_case_types
class cstmslider extends GetView<OnBoardingControllerImp> {
  const cstmslider({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pageController,
        onPageChanged: (val) {
          controller.onpagechanged(val);
        },
        itemCount: onBoardingList.length,
        itemBuilder: (context, i) => Column(
              children: [
                Text(
                  onBoardingList[i].title!,
      // ignore: deprecated_member_use
                  style:  Theme.of(context).textTheme.headline1,
                ),
                const SizedBox(
                  height: 70,
                ),
                Image.asset(
                  onBoardingList[i].image!,
                  width: double.infinity,
                  height: 200,
                ),
                const SizedBox(
                  height: 70,
                ),
                Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text(
                      onBoardingList[i].body!,
                      textAlign: TextAlign.center,
      // ignore: deprecated_member_use
                      style:  Theme.of(context).textTheme.bodyText1,
                    ))
              ],
            ));
  }
}
