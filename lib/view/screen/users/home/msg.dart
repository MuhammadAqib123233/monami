import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:monami/core/constant/colorApp.dart';
import 'package:monami/core/function/chat.dart';
import 'package:monami/data/model/ChatRoomModel.dart';
import 'package:monami/data/model/profModel.dart';
import 'package:monami/linkapi.dart';
import 'package:monami/view/screen/chats.dart';
import 'package:shared_preferences/shared_preferences.dart';

class msg extends StatefulWidget {
  const msg({Key? key}) : super(key: key);

  @override
  State<msg> createState() => _msgState();
}

class _msgState extends State<msg> {
  Future<int?> getCurrentUserId() async {
    var sharedInstance = await SharedPreferences.getInstance();
    int? id = int.tryParse(sharedInstance.getString("id") ?? "");
    return id;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
          future: getCurrentUserId(),
          builder: (context,snapshot) {
            if(snapshot.connectionState == ConnectionState.waiting){
              return Center(
                child: CircularProgressIndicator(),
              );
            }else{
              return StreamBuilder(
              stream: FirebaseFirestore.instance.collection("chatrooms").orderBy("lastmessagetime",descending: true).snapshots(),
              builder: (context, snapshot) {
                if(snapshot.connectionState == ConnectionState.waiting){
                  return Center(child: CircularProgressIndicator());
                }else{
                  if(snapshot.data != null){
                    QuerySnapshot dataSnapshot = snapshot.data as QuerySnapshot;
                  return ListView.builder(
                    itemCount: dataSnapshot.docs.length,
                    itemBuilder: (context, index) {
                      var data = dataSnapshot.docs[index].data() as Map<String,dynamic>;
                      if(data != null && data['lastmessagetime'] != null){
                        ChatRoomModel chat = ChatRoomModel.fromMap(dataSnapshot.docs[index].data() as Map<String,dynamic>);
                      String time = formatDateTime(chat.lastMessageTime!);
                        return  GestureDetector(
                        onTap: ()async{
                           var instance = await SharedPreferences.getInstance();
                                    String? id = instance.getString("id");
                        profModel prof = profModel.fromJson({
                          "prof_id" : chat.participants?['profData']['profId'],
                          "prof_name" : chat.participants?['profData']['prof_name'],
                        });
                         Get.to(()=>ChatPage(chatroom: chat, name: chat.participants?['profData']['profName'],currentUserId: int.parse(id.toString()),profmodel: prof,));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          ),
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
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: chat.participants?['profData']['profImage'] == null
      ? AssetImage("images/profile.png") as ImageProvider<Object>
      : Image.network(
          '${AppLink.imagesprof}/${chat.participants?['profData']['profImage']}',
        ).image,
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
                                                child: Text(
                                                  chat.participants?['profData']['profName'] ?? '',
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
                                            chat.lastMessage.toString() ?? '',
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
                                      Text(
                                        time ?? '',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      // const SizedBox(
                                      //   height: 10,
                                      // ),
                                      // Container(
                                      //     width: 25,
                                      //     height: 20,
                                      //     decoration: BoxDecoration(
                                      //       color: Color(0xffFAC44F),
                                      //       borderRadius: BorderRadius.circular(4),
                                      //     ),
                                      //     alignment: Alignment.center,
                                      //     child: Container(
                                      //       child: const Text(
                                      //         '2',
                                      //         style: TextStyle(color: Colors.white),
                                      //       ),
                                      //     )),
                                      // const SizedBox(
                                      //   height: 7,
                                      // ),
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
                      );
                      }
                    },
                    );
                  }else{
                    return Center();
                  }
                }
              },
            );
            }
          }
        ) 
    );
  }
  String formatDateTime(DateTime dateTime) {
  DateTime now = DateTime.now();
  
  if (DateTime(dateTime.year, dateTime.month, dateTime.day) == DateTime(now.year, now.month, now.day)) {
    // If the date is today, show the time
    return DateFormat.jm().format(dateTime);
  } else if (dateTime.isAfter(now)) {
    // If the date is in the future, show the full date and time
    return DateFormat.yMMMMd().add_jm().format(dateTime);
  } else if (DateTime(dateTime.year, dateTime.month, dateTime.day).isAfter(DateTime(now.year, now.month, now.day - 1))) {
    // If the date is yesterday, show "Yesterday"
    return 'Yesterday';
  } else {
    // Otherwise, show the full date
    return DateFormat.yMMMMd().format(dateTime);
  }
}
}
