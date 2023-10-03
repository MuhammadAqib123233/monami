import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monami/core/constant/routes.dart';

class login1 extends StatefulWidget {
  const login1({super.key});

  @override
  State<login1> createState() => _login1State();
}

class _login1State extends State<login1> {
  @override
  void initState() {

    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 5);
    return new Timer(duration, loginRoute);
  }

  loginRoute() {
        Get.offNamed(AppRoutes.chesirLogin);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white),
          ),
          Center(
            child: Container( 
                child: Image.asset('images/monami.png', width: 200,)),
          )
        ],
      ),
    );
  }
}
