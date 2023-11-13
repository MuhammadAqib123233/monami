import 'package:flutter/material.dart';
import 'package:monami/core/constant/colorApp.dart';
class ChatBubble extends StatelessWidget {
  bool isSender;
  String? msg, time;

  ChatBubble({
    Key? key,
    required this.isSender,
    required this.msg,
    this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.only(
          bottom: 10,
        ),
        constraints:
            BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.7),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: isSender ? AppColor.grey : AppColor.gold,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
              msg ?? "",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: isSender ? Colors.white : Colors.black,
              ),
              ),
            ),
            SizedBox(height: 5,),
            Text(
              time ?? "10:00 PM",
              style: TextStyle(
                fontSize: 11,
              fontWeight: FontWeight.w400,
              color: isSender ? Colors.white : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}