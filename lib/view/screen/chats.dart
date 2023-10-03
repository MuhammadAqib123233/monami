
import 'package:flutter/material.dart';

class chat1 extends StatefulWidget {
  const chat1({super.key});

  @override
  State<chat1> createState() => _chat1State();
}

class _chat1State extends State<chat1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(
              Icons.call,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context).pushNamed("att_call");
            },
          ),
          IconButton(
            icon: Icon(
              Icons.menu_open,
              color: Colors.black,
            ),
            onPressed: () {},
          )
        ],
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        // elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 260),
                  child: Column(
                    children: [
                      Container(
                        // margin: EdgeInsets.only(top: 60),
                        margin: EdgeInsets.symmetric(
                          horizontal: 120,
                        ),
                        padding: EdgeInsets.all(30),
                        height: 155,
                        width: 151,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: RadialGradient(
                              colors: [
                                Colors.orange.withOpacity(0.02),
                                Colors.orange.withOpacity(0.35),
                              ],
                              stops: [0.5, 1],
                            )),
                        child: CircleAvatar(
                            radius: 10,
                            backgroundImage: AssetImage('images/4.png')),
                      ),
                      Text(
                        "mon ami prof",
                        style: TextStyle(color: Colors.black),
                      ),
                      Text(
                        "écrit un message pour vous amis",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Container(
                height: 40,
                margin: EdgeInsets.only(left: 10, right: 10, top: 160),
                padding: EdgeInsets.only(left: 20, right: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey[200],
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: Color(0xffEEEEEE),
                      )
                    ]),
                alignment: Alignment.center,
                child: TextField(
                  cursorColor: Colors.red,
                  decoration: InputDecoration(
                      // icon: Icon(
                      //   Icons.email,
                      //   color: Colors.red,
                      // ),
                      hintText: "Text message",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      suffixIcon: Icon(Icons.send)),
                )),
          ]),
        ),
      ),
    );
  }
}
