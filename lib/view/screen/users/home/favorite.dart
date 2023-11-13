
import 'package:flutter/material.dart';
import 'package:monami/core/constant/colorApp.dart';
class favorite extends StatefulWidget {
  const favorite({super.key});

  @override
  State<favorite> createState() => _favoriteState();
}

class _favoriteState extends State<favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                              decoration: const BoxDecoration(
                              image: DecorationImage(
                              image: AssetImage("images/me.png"),
                              fit: BoxFit.cover),
                              borderRadius:
                              BorderRadius.all(Radius.circular(35))
                              ),
                        ),
                        SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Mouhssine Gemaoui",
                                  style: TextStyle(
                                      fontFamily: "Cairo",
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                CircleAvatar(
                                  radius: 7,
                                  backgroundImage:
                                      AssetImage("images/brazil.png"),
                                ),
                              ],
                            ),
                            Text('Fronçais'),
                            SizedBox(
                              height: 2,
                            ),
                            Center(
                              child: Text(
                                "The quality of the courses and mentors is \n very good and the explanations are\n very easy  to understand . ",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.blueGrey,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            IconButton(
                                icon: const Icon(
                                  Icons.arrow_circle_right_outlined,
                                  size: 20,
                                ),
                                onPressed: () {
                                  Navigator.of(context).pushNamed('profile');
                                }),
                            // Text('followers'),
                          ],
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.chat,
                            size: 20,
                          ),
                          onPressed: () {
                            Navigator.of(context).pushNamed('chat1');
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Icon(
                    // controller.isFavorite[itemsmodel.itemsId] == "1"
                    Icons.favorite,
                    color: AppColor.primaryColor,
                  ),
                  Text("followers"),
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
      ]),
    );
  }
}
