import 'package:flutter/material.dart';
import 'package:monami/core/constant/colorApp.dart';


// ignore: camel_case_types
class cstmBottomAuth extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const cstmBottomAuth({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      // width: 100,
   
      padding: const EdgeInsets.symmetric(horizontal : 100),
  
      child: MaterialButton(
           color:  AppColor.buttommonami,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        padding: const EdgeInsets.symmetric(vertical: 3),
        onPressed: onPressed,
        child: Text(text ,  style: TextStyle(fontWeight: FontWeight.w700, fontSize:  20  ), ),
        textColor: AppColor.white,
      ),
    );
  }
}

// ignore: camel_case_types
class cstmBottomchesir extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const cstmBottomchesir({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      // width: 100
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: MaterialButton(
           color:AppColor.buttommonami,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        padding: const EdgeInsets.symmetric(vertical: 3),
        onPressed: onPressed,
        child: Text(text ,  style: TextStyle(fontWeight: FontWeight.w500, fontSize:  16  ), ),
        textColor: AppColor.white,
      ),
    );
  }
}

