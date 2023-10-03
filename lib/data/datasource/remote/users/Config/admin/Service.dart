import 'package:monami/core/class/curd.dart';
import 'package:monami/linkapi.dart';

class ServiceProfData {
  Crud crud;
  ServiceProfData(this.crud);
  postdata(String body, String usersid) async {
    var response =
        await crud.postData(AppLink.Serviceprof, {"body": body, "id": usersid});
    return response.fold((l) => l, (r) => r);
  }
}
