import 'package:get/get.dart';
import 'package:monami/data/model/profModel.dart';

abstract class ProductDetailsController extends GetxController {}

class ProductDetailsControllerImp extends ProductDetailsController {
  late profModel profmodel;

  intialData() {
    profmodel = Get.arguments['profModel'];
  }

  @override
  void onInit() {
    intialData();
    super.onInit();
  }
}