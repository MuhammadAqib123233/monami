import 'package:flutter/material.dart';
import 'package:monami/core/constant/colorApp.dart';

class Sujetsfavoriteprofile extends StatelessWidget {
  final String titleappbar;
  // final String titleappbar2;
  final void Function()? OnPressedicon;
  final void Function()? onTap;
  final void Function(String)? onChanged;
  Sujetsfavoriteprofile({
    super.key,
    required this.titleappbar,
    this.OnPressedicon,
    this.onChanged,
    // required this.titleappbar2,
    this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.0),
              bottomRight: Radius.circular(15.0),
              bottomLeft: Radius.circular(15.0),
              topRight: Radius.circular(15.0),
            ),
            border: Border.all(width: 0.7, color: AppColor.buttommonami),
          ),
          child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
              child: Text(
                titleappbar,
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
        ));
  }
}
