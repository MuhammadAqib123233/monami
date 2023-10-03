import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:monami/controller/prof/active/active.dart';
import 'package:monami/core/constant/colorApp.dart';

class BottomActive extends StatefulWidget {
  const BottomActive({super.key});

  @override
  State<BottomActive> createState() => _BottomActiveState();
}

class _BottomActiveState extends State<BottomActive> {
 activecontroller  controller = Get.put(activecontroller());

  bool status = false;
  bool status1 = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Activé votre disponibilité",
          style: TextStyle(
              color: AppColor.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              // fontFamily: "Cairo"
              ),
        ),
        SizedBox(height: 5),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          child: Center(
            child: Row(
              children: [
                   FlutterSwitch(
              // inactiveSwitchBorder: ,
              toggleColor: AppColor.white,
              activeText: 'Active', 
              activeIcon:
                  Icon(Icons.expand_circle_down_outlined, color: Colors.greenAccent),
              activeColor: AppColor.buttommonami,
              activeToggleColor: AppColor.white,
              inactiveText: "Active",
              inactiveColor: AppColor.buttomInActive,
              inactiveIcon: Icon(Icons.remove_circle_outline, color: Colors.green),
              width: 140.0,
              height: 45.0,
              valueFontSize: 16.0,
              toggleSize: 45.0,
              value: status,
              borderRadius: 30.0,
              padding: 9.0,
              showOnOff: true,
              onToggle: (val  ) {
                controller.itsactive();
                setState(() {
                  status = val;
                });
              },
            ),
            SizedBox(width: 10,),
                FlutterSwitch(
                  // inactiveSwitchBorder: ,
                  toggleColor: AppColor.white,
                  activeText: 'Désactiver', 
                  activeIcon:
                      Icon(Icons.expand_circle_down_outlined, color: Colors.red),
                  activeColor: Colors.red,
                  activeToggleColor: AppColor.white,
                  inactiveText: "Désactiver",
                  inactiveColor: AppColor.buttomInActive,
                  inactiveIcon: Icon(Icons.remove_circle_outline, color: Colors.red),
                  width: 140.0,
                  height: 45.0,
                  valueFontSize: 16.0,
                  toggleSize: 45.0,
                  value: status1,
                  borderRadius: 31.0,
                  padding: 9.0,
                  showOnOff: true,
                  onToggle: (val  ) {
                    controller.itsinactive();
                    setState(() {
                      status1 = val;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      
      ],
    );
  }
}
