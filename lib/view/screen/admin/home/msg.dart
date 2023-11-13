import 'package:flutter/material.dart';
import 'package:monami/core/constant/colorApp.dart';

class msg extends StatefulWidget {
  const msg({Key? key}) : super(key: key);

  @override
  State<msg> createState() => _msgState();
}
class _msgState extends State<msg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Container(
            color: Colors.white,
            child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(children: [
                  // for (int i = 1; i < 9; i++)
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed("chat1");
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        // color: Color.fromARGB(255, 255, 242, 221),
                      ),
                      //
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      margin: EdgeInsets.symmetric(vertical: 15),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage("images/1.png"),
                                            fit: BoxFit.cover),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(35))
                                        // border: Border.all(
                                        // color: Colors.amber, width: 1)
                                        ),
                                  ),
                                  const SizedBox(
                                    width: 12,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(top: 0),
                                            child: const Text(
                                              "Mouhssine Gemaoui",
                                              style: TextStyle(
                                                  fontFamily: "Cairo",
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "Hi Tina. \nHow's your night going?",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.blueGrey,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  const Text(
                                    '12:33 PM',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                      width: 25,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        color: Color(0xffFAC44F),
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      alignment: Alignment.center,
                                      child: Container(
                                        child: const Text(
                                          '2',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      )),
                                  const SizedBox(
                                    height: 7,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            margin: const EdgeInsets.only(
                              top: 15,
                            ),
                            height: 0.2,
                            decoration: BoxDecoration(color: AppColor.grey),
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed("chat1");
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        // color: Color.fromARGB(255, 255, 242, 221),
                      ),
                      //
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      margin: EdgeInsets.symmetric(vertical: 15),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage("images/3.png"),
                                            fit: BoxFit.cover),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(35))
                                        // border: Border.all(
                                        // color: Colors.amber, width: 1)
                                        ),
                                  ),
                                  const SizedBox(
                                    width: 12,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(top: 0),
                                            child: const Text(
                                              "Mouhssine Gemaoui",
                                              style: TextStyle(
                                                  fontFamily: "Cairo",
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "Hi Tina. \nHow's your night going?",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.blueGrey,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  const Text(
                                    '12:33 PM',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                      width: 25,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        color: Color(0xffFAC44F),
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      alignment: Alignment.center,
                                      child: Container(
                                        child: const Text(
                                          '2',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      )),
                                  const SizedBox(
                                    height: 7,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            margin: const EdgeInsets.only(
                              top: 15,
                            ),
                            height: 0.2,
                            decoration: BoxDecoration(color: AppColor.grey),
                          )
                        ],
                      ),
                    ),
                  ),
                ]))),
      ],
    ));
  }
}
