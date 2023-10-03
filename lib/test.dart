import 'package:flutter/material.dart';
import 'package:monami/core/function/checkinternrt.dart';


class test extends StatefulWidget {
  const test({super.key});

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {

  var res;
  intaildata() async {
    res = await checkInternet();
    print(res);
  }

  @override
  void initState() {
    intaildata();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(children: []),
      ),
    );
  }
}
