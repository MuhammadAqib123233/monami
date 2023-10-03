
import 'package:get/get.dart';
import 'package:monami/core/constant/routes.dart';

abstract class SuccessSingupcontroller extends GetxController {
  goToPageLogin();

}

class SuccessSingupcontrollerImp extends SuccessSingupcontroller {

  @override
  goToPageLogin() {
      Get.toNamed(AppRoutes.login);
  }
}
