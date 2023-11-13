import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:monami/core/class/statusrequest.dart';
import 'package:monami/core/function/handlingDatacontroller.dart';
import 'package:monami/core/services/services.dart';
import 'package:monami/data/datasource/remote/prof/profdataview.dart';
import 'package:monami/data/datasource/remote/users/usersdataview.dart';
import 'package:monami/data/model/ChatRoomModel.dart';
import 'package:monami/data/model/profModel.dart';
import 'package:monami/data/model/usersmodel.dart';
import 'package:monami/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ChatFunction{
   profviewData profviewdata = profviewData(Get.find());
   late StatusRequest statusRequest;
  Future<List<ChatRoomModel>> getChatUsers()async{
    var sharedInstance = await SharedPreferences.getInstance();
    var currentUserId = await sharedInstance.getString("id");
    String? step = await sharedInstance.getString("step");
    var chatrooms = await FirebaseFirestore.instance.collection("chatrooms").where("participants.$currentUserId",isEqualTo: true).get();
    List<ChatRoomModel> getchatrooms = await chatrooms.docs.map((document) {
      Map<String, dynamic> data = document.data() as Map<String, dynamic>;
     ChatRoomModel chatRoom = ChatRoomModel.fromMap(data);
      return chatRoom;
    }).toList();
     List<ChatRoomModel> chatUsers = [];
    for (ChatRoomModel chatroom in getchatrooms) {
    for (var entry in chatroom.participants!.entries) {
      String key = entry.key;
      bool value = entry.value;
      if (key != currentUserId.toString() && value == true) {
        if(step == "4"){
          var response =
        await profviewdata.getData(key.toString());
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        // data.addAll(response['data']);
        print(response['data']);
        List responsedata = response['data'];
        profModel prof = profModel.fromJson(response['data'][0]);
        //chatroom.participants?.addAll({"otherUserData":response['data'][0]}); 
        chatUsers.add(chatroom);
      } 
    }
        }
      }
    }
  }
    print("chatroom length is: ${chatUsers.length}");
    return chatUsers;
  }

  Future<ChatRoomModel?> getChatroomModel(profModel prof) async {
     var sharedInstance = await SharedPreferences.getInstance();
    var currentUserId = await sharedInstance.getString("id");
    usersviewData usersviewdata = usersviewData(Get.find());
      usersModel? user;
      var response =
        await usersviewdata.getData(currentUserId);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        // data.addAll(response['data']);
        List responsedata = response['data'];
        user = usersModel.fromJson(response['data'][0]);
       // data.addAll(responsedata.map((e) => usersModel.fromJson(e)));
      }
    }
    ChatRoomModel? chatRoom;

    QuerySnapshot snapshot = await FirebaseFirestore.instance.collection("chatrooms").where("participants.${int.parse(currentUserId.toString())}", isEqualTo: true).where("participants.${prof.profId}", isEqualTo: true).get();
    if(snapshot.docs.length > 0) {
      // Fetch the existing one
      var docData = snapshot.docs[0].data();
      ChatRoomModel existingChatroom = ChatRoomModel.fromMap(docData as Map<String, dynamic>);

      chatRoom = existingChatroom;
    }
    else {
     ChatRoomModel newChatroom = ChatRoomModel(
        chatroomid: uuid.v1(),
        lastMessage: "",
        participants: {
          currentUserId.toString(): true,
          prof.profId.toString(): true,
          "profData": {
            "profId" : prof.profId,
            "profImage" : prof.profImage,
            "profName" : prof.profName,
          },
          "userData" : {
            "userId" : user?.id,
            "userImage" : user?.usersImage,
            "userName" : user?.usersName,
          }
        },
      );

      await FirebaseFirestore.instance.collection("chatrooms").doc(newChatroom.chatroomid.toString()).set(newChatroom.toMap());

      chatRoom = newChatroom;
      // print("New Chatroom Created!");
    }

    return chatRoom;
  }
} 