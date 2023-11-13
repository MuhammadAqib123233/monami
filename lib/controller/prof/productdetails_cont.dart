import 'package:get/get.dart';
import 'package:monami/data/model/usersModel.dart';

abstract class usersprofileController extends GetxController {}

class usersprofileControllerImp extends usersprofileController {
  late usersModel usersmodel;

  intialData() {
    usersmodel = Get.arguments['usersModel'];
  }


  @override
  void onInit() {
    intialData();
    super.onInit();
  }
}