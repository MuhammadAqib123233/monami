
import 'package:get/get.dart';
import 'package:monami/core/class/statusrequest.dart';
import 'package:monami/core/constant/routes.dart';

import 'package:monami/core/function/handlingDatacontroller.dart';
import 'package:monami/core/services/services.dart';
import 'package:monami/data/datasource/remote/users/usersdataview.dart';

import 'package:monami/data/model/usersModel.dart';

abstract class usersprofilecontroller extends GetxController {
  gotoeditprofileusers(usersModel usersmodel) ;
  initialData();
  getedata();
}

class usersprofilecontrollerImp extends usersprofilecontroller {
  MyServices myServices = Get.find();

  String? username;
  String? id;
  List data = [];

   late usersModel usersmodel;

  @override
  void onInit() {
    initialData();
    getedata();
    super.onInit();
  }

  usersviewData usersviewdata = usersviewData(Get.find());

  late StatusRequest statusRequest;

  @override
  initialData() {}
  getedata() async {
    data.clear();
      statusRequest = StatusRequest.loading;
    var response =
        await usersviewdata.getData(myServices.sharedPreferences.getString("id")!);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        // data.addAll(response['data']);
        List responsedata = response['data'];
        data.addAll(responsedata.map((e) => usersModel.fromJson(e)));
      } else {}
         update();
    }
  } 

  @override
  gotoeditprofileusers(usersModel usersmodel) {
  Get.toNamed(AppRoutes.edit,
  arguments: {"usersModel": usersmodel
 }
 ); 
}

}
