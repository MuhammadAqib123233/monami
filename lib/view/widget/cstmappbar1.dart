import 'package:flutter/material.dart';
import 'package:monami/core/constant/colorApp.dart';

class Cstmappbarauth extends StatelessWidget {
  final String titleappbar;
  final void Function()? OnPressedicon;
  final void Function()? onPressedSearch;
  final void Function()? onPressedMyfavorite;
  const Cstmappbarauth(
      {super.key,
      required this.titleappbar,
      this.OnPressedicon,
      this.onPressedSearch,
      required this.onPressedMyfavorite});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.white,
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(children: [
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          width: 40,
          child: IconButton(
              onPressed: onPressedMyfavorite,
              icon: Icon(
                Icons.arrow_back,
                size: 30,
                color: Colors.black,
              )),
        ),
        SizedBox(width: 100),
        Container(
            height: 60,
            width: 120,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'images/monami.png',
                  ),
                  fit: BoxFit.fitHeight),
            )),
        SizedBox(width: 10),
      ]),
    );
  }
}
