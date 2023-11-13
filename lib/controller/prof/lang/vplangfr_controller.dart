import 'package:get/get.dart';
import 'package:monami/core/class/statusrequest.dart';
import 'package:monami/core/constant/routes.dart';
import 'package:monami/core/function/handlingDatacontroller.dart';
import 'package:monami/core/services/services.dart';
import 'package:monami/data/datasource/remote/lang/vplangfr.dart';
import 'package:monami/data/model/profModel.dart';


abstract class viewpluslangfr extends GetxController {
  // initialData();
  getdata();
goToPageProductDetails(profModel profmodel);}

class viewpluslangfrImp extends viewpluslangfr {

  MyServices myservices = Get.find();

  @override
    void onInit() {
    // initialData();
    getdata();
    super.onInit();
  }
  
  VpLangFr vpLangfr = VpLangFr(Get.find());

  List data = [];
 late StatusRequest statusRequest;

//   @override
//   initialData() {
// getdata();
// }

getdata() async {
    data.clear( );
    statusRequest = StatusRequest.loading;
    update();
    var response = await vpLangfr.getData();
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      data.addAll(response['data']);
    } else {
      statusRequest = StatusRequest.failute;
    }
    update();
  }
  goToPageProductDetails(profmodel) {
    statusRequest = StatusRequest.loading;
    Get.toNamed(AppRoutes.ProducteDetails,
        arguments: {"profModel": profmodel});
  }
}