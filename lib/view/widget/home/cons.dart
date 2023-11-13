import 'package:flutter/material.dart';
import 'package:monami/core/constant/colorApp.dart';

class MonAcc extends StatefulWidget {
  MonAcc({super.key});

  @override
  State<MonAcc> createState() => _MonAccState();
}

class _MonAccState extends State<MonAcc> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      margin: EdgeInsets.symmetric(horizontal: 15),
      height: 110,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15.0),
          bottomRight: Radius.circular(15.0),
          bottomLeft: Radius.circular(15.0),
          topRight: Radius.circular(15.0),
        ),
        gradient: LinearGradient(colors: [
          Color.fromARGB(142, 238, 205, 155),
          Color.fromARGB(146, 255, 255, 255),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        // border: Border.all(width: 0.7 , color: AppColor.white),
      ),
      child: Column(children: [
        Center(
            child: Container(
          margin: EdgeInsets.only(top: 5),
          child: Text(
            "Aujourd’hui",
            style: TextStyle(
                color: AppColor.black,
                fontSize: 15,
                fontWeight: FontWeight.bold,
                fontFamily: 'Cairo'),
          ),
        )),
        Container(
          margin: EdgeInsets.only(left: 20),
          child: Row(
            children: [
              Text(
                'le temps passé ',
                style: TextStyle(
                  color: AppColor.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 14,
              ),
              Container(
                height: 10,
                width: 10,
                color: Color(0xffFAC44F),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 20),
          child: Row(
            children: [
              Text(
                'le temps restant',
                style: TextStyle(
                  color: AppColor.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 10,
                width: 10,
                color: Color(0xffFFF1D3),
              )
            ],
          ),
        ),
        
      ]),
    );
  }
}
