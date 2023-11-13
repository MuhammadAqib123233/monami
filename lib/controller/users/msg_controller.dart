import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MessageController extends GetxController{
  int? currentUserId;
  @override
  void onInit(){
    getCurrentUserId().then((value){
      currentUserId = value;
    });
  }
  Future<int?> getCurrentUserId()async{
    var sharedInstance = await SharedPreferences.getInstance();
    int? id = int.parse(sharedInstance.getString("id").toString());
    return id;
  }
}