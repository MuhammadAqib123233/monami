import 'package:flutter/material.dart';

// ignore: camel_case_types
class cstmTextFormAuth extends StatelessWidget {
  final String hinttext;
  final String labeltext;
  final IconData iconData;
  final TextEditingController mycontroller;
  final String? Function(String?) valid;
  final String? Function()? onTapIcon;
  final bool? ObscureText;

  const cstmTextFormAuth(
      {super.key,
      required this.hinttext,
      required this.labeltext,
      required this.iconData,
      required this.mycontroller,
      required this.valid,
      this.ObscureText,
      this.onTapIcon});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
        
          alignment: Alignment.topLeft,
          child: Text(labeltext)),
          SizedBox(height: 5,),
        Container(
          height: 40,
          width: MediaQuery.of(context).size.width * 0.9,
          // margin: const EdgeInsets.only(bottom: 21),
          // padding: const EdgeInsets.symmetric(horizontal: 10 ),
          child: TextFormField(
            // validator: valid,
            controller: mycontroller,
            obscureText: ObscureText == null || ObscureText == false  ? false : true,
            decoration: InputDecoration(
                hintText: hinttext,
                hintStyle:  TextStyle(fontSize: 12),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                // suffixIcon: 
                // InkWell(
                //   child: Icon(iconData),
                //   onTap: onTapIcon,
                // ),
                // label: Text(labeltext , style: TextStyle(color: AppColor.black, fontWeight: FontWeight.w700),),
                border: const OutlineInputBorder(
                  
                    borderRadius: BorderRadius.all(Radius.circular(10))
                    )),
          ),
        ),
      ],
    );
  }
}
