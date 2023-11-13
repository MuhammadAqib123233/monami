import 'package:get/get.dart';
import 'package:monami/core/class/statusrequest.dart';
import 'package:monami/core/constant/routes.dart';
import 'package:monami/core/function/handlingDatacontroller.dart';
import 'package:monami/core/services/services.dart';
import 'package:monami/data/datasource/remote/prof/lang/vplangfr.dart';
import 'package:monami/data/model/usersModel.dart';


abstract class viewpluslangfrusres extends GetxController {
  getdata();
goToPageProductDetails(usersModel usersmodel);}

class viewpluslangfrusresImp extends viewpluslangfrusres {

  MyServices myservices = Get.find();

  @override
    void onInit() {
    getdata();
    super.onInit();
  }
  
  VpLangFrusres vpLangfrusers = VpLangFrusres(Get.find());
  List data = [];
 late StatusRequest statusRequest;


getdata() async {
    data.clear( );
    statusRequest = StatusRequest.loading;
    update();
    var response = await vpLangfrusers.getData(myservices.sharedPreferences.getString("id")!);
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