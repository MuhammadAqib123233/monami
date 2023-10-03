import 'package:flutter/material.dart';
import 'package:monami/core/constant/colorApp.dart';

class textsignuplogin extends StatelessWidget {
  final String textone;
  final String texttwo;
  final void Function()? onTap;
  const textsignuplogin(
      {super.key, 
      required this.textone,
       required this.texttwo, 
       this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(textone),
        InkWell(
          onTap: onTap,
          child: Text(
            texttwo,
            style: TextStyle(
                color: AppColor.buttommonami, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}