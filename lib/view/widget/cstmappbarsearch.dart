import 'package:flutter/material.dart';
import 'package:monami/core/constant/colorApp.dart';

class cstmappbarsearch extends StatelessWidget {
  final String titleappbar;
  final void Function()? OnPressedicon;
  final void Function()? onPressedSearch;
  // final void Function()? onPressedMyfavorite;
  final void Function(String)? onChanged;
  final TextEditingController mycontroller;
  const cstmappbarsearch(
      {super.key,
      required this.titleappbar,
      this.OnPressedicon,
      required this.onPressedSearch,
      this.onChanged,
      required this.mycontroller});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
        border: Border.all(color: AppColor.buttommonami)),
      margin: EdgeInsets.only(top: 20),
      height: 40,
      child: Row(
        children: [
        Expanded(
            child: TextFormField(
          controller: mycontroller,
          onChanged: onChanged,
          decoration: InputDecoration(
            prefixIcon: IconButton(
              icon: Icon(
                Icons.search,
                color: AppColor.buttommonami,
              ),
              onPressed: onPressedSearch,
            ),
            hintText:titleappbar,
            hintStyle: TextStyle(fontSize: 12, color: AppColor.grey),
            border: OutlineInputBorder(
              
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(50),
            ),
            filled: true,
          ),
        )),
      ]),
    );
  }
}
