
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:monami/core/constant/colorApp.dart';
import 'package:monami/core/services/services.dart';
import 'package:monami/data/model/ChatRoomModel.dart';
import 'package:monami/data/model/MessageModel.dart';
import 'package:monami/data/model/profModel.dart';
import 'package:monami/main.dart';
import 'package:monami/view/widget/chat/ChatBubble.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class ChatPage extends StatelessWidget {
  ChatRoomModel? chatroom;
  String? name;
  int? currentUserId;
  profModel? profmodel;
  TextEditingController messageController = TextEditingController();
  Future<int?> getStep()async{
    var myservices = await SharedPreferences.getInstance();
    var id = myservices.getString("step");
    return int.parse(id.toString());
  }
  ChatPage({super.key, required this.chatroom,required this.name, this.currentUserId, this.profmodel});
     void sendMessage() async {
      var myservices = await SharedPreferences.getInstance();
      var id = myservices.getString("id");
    String msg = messageController.text.trim();
    messageController.clear();

    if(msg != "") {
      // Send Message
      MessageModel newMessage = MessageModel(
        messageid: uuid.v1(),
        sender: int.parse(id.toString()),
        createdon: DateTime.now(),
        text: msg,
        seen: false
      );

      FirebaseFirestore.instance.collection("chatrooms").doc(this.chatroom?.chatroomid).collection("messages").doc(newMessage.messageid).set(newMessage.toMap());

      this.chatroom?.lastMessage = msg;
      this.chatroom?.lastMessageTime = DateTime.now();
      FirebaseFirestore.instance.collection("chatrooms").doc(this.chatroom?.chatroomid).set(this.chatroom!.toMap());
  //     var SenderName = userModel.firstname.toString() + " " + userModel.lastname.toString();
  // final apiUrl = Uri.parse('https://fcm.googleapis.com/fcm/send');
  // // Define the request headers (if needed)
  // final headers = {
  //   'Content-Type': 'application/json',
  //   'Authorization' : 'key=$authorizationtoken'
  //   // Add any other headers if required
  // };

  // // Define the request body
  // final requestBody = {
  //   "registration_ids": [
  //     targetUser.pushToken
  //   ],
  //   "notification": {
  //     "body": "$SenderName sent you message",
  //     "title": "Message",
  //     "android_channel_id": "high_importance_channel",
  //     "sound": false
  //   }
  // };

  // // Send the POST request
  // final response = await http.post(
  //   apiUrl,
  //   headers: headers,
  //   body: jsonEncode(requestBody),
  // );

  // // Check the response status
  // if (response.statusCode == 200) {
  //   print('Response data: ${response.body}');
  //   // You can parse and handle the response data here
  // } else {
  //   print('Error: ${response.statusCode}');
  //   print('Error message: ${response.body}');
  //   // Handle the error response here
  // }
  //     print("Message Sent!");

  //   }
  }}
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getStep(),
      builder: (context,snapshot) {
        if(snapshot.connectionState == ConnectionState.waiting){
          return Center(
            child: CircularProgressIndicator(),
          );
        }else{
          return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            actions: [
                                    ZegoSendCallInvitationButton(
                            resourceID: "zegouikit_call",
                            isVideoCall: true,
                            icon: ButtonIcon(
                              icon: Icon(Icons.call, color: Colors.black,)
                            ),
                            buttonSize: Size(80, 50),
                            iconTextSpacing: 0,
                            padding: EdgeInsets.all(0),
                            margin: EdgeInsets.all(0),
                            verticalLayout: false,
                            invitees: [
          ZegoUIKitUser(
             id: snapshot.data == 4
      ? chatroom?.participants!['profData']['profId']?.toString() ?? ""
      : chatroom?.participants!['userData']['userId']?.toString() ?? "",
             name: snapshot.data == 4
      ? chatroom?.participants!['profData']['profName']?.toString() ?? ""
      : chatroom?.participants!['userData']['userName']?.toString() ?? "", 
          ),
   ],
                            ),
              IconButton(
                icon: Icon(
                  Icons.menu_open,
                  color: Colors.black,
                ),
                onPressed: () {},
              )
            ],
            title: Text(name.toString(), style: TextStyle(
              fontSize: 18,
              color: Colors.black
            ),),
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {
                Get.back();
              },
            ),
            // elevation: 0,
          ),
          body: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 60.0),
                              child: StreamBuilder(
                            stream: FirebaseFirestore.instance.collection("chatrooms").doc(chatroom?.chatroomid).collection("messages").orderBy("createdon", descending: true).snapshots(),
                            builder: (context,snapshot) {
                            if (snapshot.connectionState == ConnectionState.waiting) {
                              // Display a loading indicator while the messages are being fetched
                              return Center(child: CircularProgressIndicator());
                            } else if (snapshot.hasError) {
                              // Handle the case where an error occurred while fetching the messages
                              return Text('Error loading messages');
                            } else {
                              // Use the retrieved messages to build the chat UI
                              QuerySnapshot dataSnapshot = snapshot.data as QuerySnapshot;
                              return ListView.builder(
                                reverse: true,
                                itemCount: dataSnapshot.docs.length,
                                itemBuilder: (context, index) {
                                  MessageModel currentMessage = MessageModel.fromMap(dataSnapshot.docs[index].data() as Map<String, dynamic>);          
                                  print(currentMessage.sender);
                                  DateTime messageTime = DateTime.parse(currentMessage.createdon.toString());
                                  String formattedTime = DateFormat.jm().format(messageTime);

                                  // Customize the ChatBubble widget according to your data structure
                                  if(currentMessage.sender == currentUserId){
                                    return ChatBubble(
                                    time: formattedTime,
                                    isSender: true,
                                    msg: currentMessage.text,
                                  );
                                  }else{
                                    return ChatBubble(
                                    time: formattedTime,
                                    isSender: false,
                                    msg: currentMessage.text,
                                  );
                                  }
                                },
                              );
                            }
                            },
                          ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 30,),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
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
                        controller: messageController,
                        cursorColor: Colors.red,
                        decoration: InputDecoration(
                            // icon: Icon(
                            //   Icons.email,
                            //   color: Colors.red,
                            // ),
                            hintText: "Text message",
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            suffixIcon: InkWell(
                              onTap: () {
                                sendMessage();
                              },
                              child: Icon(Icons.send))),
                      )),
                      ),
                    ),
                  ],
                ),
        );
        }
      }
    );
  }
}