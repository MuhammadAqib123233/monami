import 'package:monami/core/class/statusrequest.dart';
import 'package:get/get.dart';
import 'package:monami/data/model/profModel.dart';
import 'package:monami/core/services/services.dart';
import 'package:monami/core/function/handlingDatacontroller.dart';
import 'package:monami/data/datasource/remote/users/notification/viewNotif.dart';

class NotificationController extends GetxController {
  
  viewnotificationData viewnotificationdata = viewnotificationData(Get.find());

  List data = [];

   late profModel profmodel ;

  late StatusRequest statusRequest;

  MyServices myServices = Get.find();
  getData() async {
    data.clear();
    statusRequest = StatusRequest.loading;
   update();
    var response = await viewnotificationdata.getData(myServices.sharedPreferences.getString("id")!);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      
        data.addAll(response['data']);
      } else {
        statusRequest = StatusRequest.failute;
      
    }
    update();
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}