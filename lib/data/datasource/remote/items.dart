import 'package:monami/core/class/curd.dart';
import 'package:monami/linkapi.dart';


class ProfitemsData {
  Crud crud;
  ProfitemsData(this.crud);

  getData(String id ,String userid) async {
    var response = await crud.postData(AppLink.itmes, {
      "id" : id.toString() ,
      "usersid" :  userid ,
    });
   return response.fold((l) => l, (r) => r) ;
  }
}