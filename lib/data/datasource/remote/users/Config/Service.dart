import 'package:monami/core/class/curd.dart';
import 'package:monami/linkapi.dart';

class ServiceClientsData {
  Crud crud;
  ServiceClientsData(this.crud);
  postdata(String body, String usersid) async {
    var response =
        await crud.postData(AppLink.ServiceClients, {"body": body, "id": usersid});
    return response.fold((l) => l, (r) => r);
  }
}
