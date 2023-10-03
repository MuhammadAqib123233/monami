

import 'package:flutter/material.dart';
import 'package:monami/core/constant/imagessets.dart';

class LogoAuth extends StatelessWidget {
  const LogoAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(AppImageAsset.onBoardingImage2m , height: 200,);
  }
}


class LogoAuthSingup extends StatelessWidget {
  const LogoAuthSingup({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(AppImageAsset.onBoardingImage3m , height: 200,);
  }
}


class LogoProf extends StatelessWidget {
  const LogoProf({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(AppImageAsset.loginprof , height: 260,);
  }
}


class Logochesir extends StatelessWidget {
  const Logochesir({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(AppImageAsset.onBoardingImage1m , height: 250,);
  }
}