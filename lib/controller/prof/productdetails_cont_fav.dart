import 'package:get/get.dart';
import 'package:monami/data/model/myfavorite.dart';

abstract class ProductDetailsFavController extends GetxController {}

class ProductDetailsFavControllerImp extends ProductDetailsFavController {
  late myfavoriteModel myfavoritemodel;

  intialData() {
    myfavoritemodel = Get.arguments['myfavoriteModel'];
  }



  @override
  void onInit() {
    intialData();
    super.onInit();
  }
}