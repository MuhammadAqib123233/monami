import 'package:monami/core/class/curd.dart';
import 'package:monami/linkapi.dart';


class VpLangFrusres {
  Crud crud;
  VpLangFrusres(this.crud);

  getData(String userid) async {
    var response = await crud.postData(AppLink.VpLangFrusres, {
      // "id" : id.toString() ,
      "id" :  userid ,
    });
   return response.fold((l) => l, (r) => r) ;
  }
}