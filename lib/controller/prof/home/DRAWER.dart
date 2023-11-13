import 'package:get/get.dart';
import 'package:monami/core/services/services.dart';

class appareprofcontroller extends GetxController{
 MyServices myservices = Get.find();
  String? username;
  String? email;


initialdata(){
  username = myservices.sharedPreferences.getString("username");
  email = myservices.sharedPreferences.getString("email");
}

  @override
  void onInit() {
   initialdata();
    super.onInit();
}
}