import 'package:flutter/material.dart';

import 'package:monami/core/constant/colorApp.dart';

class cstmtitlehome extends StatelessWidget {
  final String titlehome;
  const cstmtitlehome({super.key, required this.titlehome});

  @override
  Widget build(BuildContext context) {
    return Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),

      child: Text(titlehome, 
      
      style: TextStyle(fontSize: 18,
         fontFamily: "Cairo",
      color: AppColor.black ,
       fontWeight: FontWeight.bold),),
    );
  }
}