import 'package:get/get.dart';
import 'package:monami/core/class/statusrequest.dart';
import 'package:monami/core/constant/routes.dart';
import 'package:monami/core/function/handlingDatacontroller.dart';
import 'package:monami/core/services/services.dart';
import 'package:monami/data/datasource/remote/prof/lang/vplangen.dart';
import 'package:monami/data/model/usersModel.dart';


abstract class viewpluslangenusres extends GetxController {
  getdata();
goToPageProductDetails(usersModel usersmodel);}

class viewpluslangenusresImp extends viewpluslangenusres {

  MyServices myservices = Get.find();

  @override
    void onInit() {
    getdata();
    super.onInit();
  }
  
  VpLangEnusres vpLangenusers = VpLangEnusres(Get.find());

  List data = [];
 late StatusRequest statusRequest;

getdata() async {
    data.clear( );
    statusRequest = StatusRequest.loading;
    update();
    var response = await vpLangenusers.getData(myservices.sharedPreferences.getString("id")!);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      data.addAll(response['data']);
    } else {
      statusRequest = StatusRequest.failute;
    }
    update();
  }
  goToPageProductDetails(usersmodel) {
    statusRequest = StatusRequest.loading;
    Get.toNamed(AppRoutes.ProducteDetails,
        arguments: {"usersModel": usersmodel});
  }
}