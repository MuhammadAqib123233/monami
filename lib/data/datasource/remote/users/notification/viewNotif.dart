
import 'package:monami/core/class/curd.dart';
import 'package:monami/linkapi.dart';

class viewnotificationData {
  Crud crud;
  viewnotificationData(this.crud);
  getData(String id) async {
    var response = await crud.postData(AppLink.viewnotification, {"id": id.toString()});
    return response.fold((l) => l, (r) => r);
  }
}