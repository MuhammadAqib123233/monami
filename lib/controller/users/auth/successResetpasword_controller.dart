
import 'package:get/get.dart';
import 'package:monami/core/constant/routes.dart';

abstract class SuccessResetPasswordcontroller extends GetxController {
  goToPageLogin();

}

class SuccessResetPasswordcontrollerImp extends SuccessResetPasswordcontroller {

  @override
  goToPageLogin() {
      Get.toNamed(AppRoutes.login);
  
  }
}
