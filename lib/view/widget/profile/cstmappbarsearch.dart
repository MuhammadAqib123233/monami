import 'package:flutter/material.dart';
import 'package:monami/core/constant/colorApp.dart';

class listprofile extends StatelessWidget {
  final String titleappbar;
  final String titleappbar2;
  final void Function()? OnPressedicon;
  final void Function()? onTap;
  // final void Function()? onPressedSearch;
  // final void Function()? onPressedMyfavorite;
  final void Function(String)? onChanged;
//  final TextEditingController mycontroller ;
  const listprofile({
    super.key,
    required this.titleappbar,
    this.OnPressedicon,
    // required  this.onPressedSearch,
    // required this.onPressedMyfavorite,
    this.onChanged,
    required this.titleappbar2,
    this.onTap,
    // required this.mycontroller
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        //  padding: EdgeInsets.symmetric(vertical: 10),
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                titleappbar,
                style: TextStyle(fontSize: 15, 
                fontFamily: "cairo",
                fontWeight: FontWeight.bold,
                color: Colors.black),
              ),
              Container(
                child: Row(children: [
                  Text(
                    titleappbar2,
                    style: TextStyle(fontSize: 14, color: AppColor.grey),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: AppColor.grey,
                  )
                ]),
              ),
            ]),
            Divider(
              color: AppColor.grey,
            )
          ],
        ),
      ),
    );
  }
}
