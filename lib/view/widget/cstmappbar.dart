import 'package:flutter/material.dart';

class Cstmappbar extends StatelessWidget {
  final String titleappbar;
  final void Function()? OnPressedicon;
  final void Function()? onPressedSearch;
  final void Function()? onPressedMyfavorite;
  const Cstmappbar(
     {super.key,
      required this.titleappbar,
      this.OnPressedicon,
      this.onPressedSearch,
      required this.onPressedMyfavorite}
   );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
          decoration: BoxDecoration(
              // color: Colors.grey[200],
               borderRadius: BorderRadius.circular(10)),
          width: 40,
          child: IconButton(
              onPressed: onPressedMyfavorite,
              icon: Icon(
                Icons.arrow_back,
                size: 30,
                color: Colors.black,
              )),),
        SizedBox(width: 10),
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
        Container(
          decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(10)),
          width: 40,
          child: IconButton(
              onPressed: onPressedMyfavorite,
              icon: Icon(
                Icons.search,
                size: 30,
                color: Colors.black,
              )
           ),
        )
      ]),
    );
  }
}
