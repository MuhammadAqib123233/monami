import 'package:get/get.dart';
import 'package:monami/core/class/statusrequest.dart';
import 'package:monami/core/constant/routes.dart';
import 'package:monami/core/function/handlingDatacontroller.dart';
import 'package:monami/data/datasource/remote/auth/verfiycodesignup.dart';

abstract class Verfiycodesignupcontroller extends GetxController {
  checkCode();
  goToSuccessSignup(String Verfiycodesignup);
}

class VerfiycodesignupcontrollerImp extends Verfiycodesignupcontroller {
  VerfiyCodeSignUpData verfiyCodeSignUpData = VerfiyCodeSignUpData(Get.find());

  String? email;
  StatusRequest? statusRequest;

  @override
  checkCode() {}

  @override
  goToSuccessSignup(String Verfiycodesignup) async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await verfiyCodeSignUpData.postdata(email!, Verfiycodesignup);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        // data.addAll(response['data']);
        Get.offNamed(AppRoutes.successSignup);
      } else {
        Get.defaultDialog(
            title: 'Warning',
            middleText: 'Verfiy Code Not Correct');
        statusRequest = StatusRequest.failute;
      }
    }
    update();
  }

  @override
  void onInit() {
    email = Get.arguments['email'];
    super.onInit();
  }
}
