import 'package:flutter/material.dart';
import 'package:monami/core/constant/colorApp.dart';

class monAccontProf extends StatefulWidget {
  monAccontProf({super.key});

  @override
  State<monAccontProf> createState() => _monAccontProfState();
}

class _monAccontProfState extends State<monAccontProf> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 350,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15.0),
            bottomRight: Radius.circular(15.0),
            bottomLeft: Radius.circular(15.0),
            topRight: Radius.circular(15.0),
          ),
          gradient: LinearGradient(colors: [
          AppColor.backgrandMonAcconteTop,
          AppColor.backgrandMonAccontebuttom
          ], begin: Alignment.topCenter, 
          end: Alignment.bottomCenter
          ),
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
                  fontSize: 14.86,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Cairo'),
            ),
          )),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                  height: 10,
                ),
                Container(
                  height: 20,
                  width: 250,
                   decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15.0),
            bottomRight: Radius.circular(15.0),
            bottomLeft: Radius.circular(15.0),
            topRight: Radius.circular(15.0),
          ),
          gradient: LinearGradient(colors: [
          AppColor.gold,
          AppColor.gold
          ], begin: Alignment.topLeft, 
          end: Alignment.topRight
          ),
          // border: Border.all(width: 0.7 , color: AppColor.white),
        ),
                )
              ],
            ),
          ),
          SizedBox(height: 20),
        ]),
      ),
    );
  }
}
