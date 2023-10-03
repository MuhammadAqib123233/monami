import 'package:flutter/material.dart';


class cstmTextAuth extends StatelessWidget {
  final String text;
  const cstmTextAuth({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      // ignore: deprecated_member_use
      style: Theme.of(context).textTheme.headline2,
    );
  }
}

class cstmTextchesir extends StatelessWidget {
  final String text;
  const cstmTextchesir({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w500 , color: Colors.black ),
    );
  }
}

