import 'package:get/get.dart';
import 'package:monami/core/class/statusrequest.dart';
import 'package:monami/core/constant/routes.dart';
import 'package:monami/core/function/handlingDatacontroller.dart';
import 'package:monami/core/services/services.dart';
import 'package:monami/data/datasource/remote/items.dart';
import 'package:monami/data/model/profModel.dart';

abstract class ItemsController extends GetxController {
  initialData();
  changeCat(int val, String catval);
  getItems(String categoryid);
goToPageProductDetails(profModel profmodel);}


class ItemsControllerImp extends ItemsController {
  MyServices myservices = Get.find();

  @override
  changeCat(val, catval) {
    selectedCat = val;
    catid = catval;
    getItems(catid!);
    update();
  }

  @override
  void onInit() {
    initialData();
    super.onInit();
  }

  List category = [];
  int? selectedCat;
  String? catid;

  ProfitemsData itemsprofData = ProfitemsData(Get.find());
  List data = [];
 late StatusRequest statusRequest;

  @override
  initialData() {
    category = Get.arguments["category"];
    selectedCat = Get.arguments["selectedCat"];
    catid = Get.arguments["catid"];
    getItems(catid!);
  }

  getItems(categoryid) async {
    // data.clear();
    statusRequest = StatusRequest.loading;
    update();
    var response = await itemsprofData.getData(categoryid,myservices.sharedPreferences.getString("id")! );
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