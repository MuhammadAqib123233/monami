import 'package:get/get.dart';
import 'package:monami/controller/users/auth/SignUp_controller.dart';

class Mybinding extends Bindings {
  @override
  void dependencies() {
     Get.lazyPut(() => SignUpcontrollerImp(),fenix: true );
  }
}