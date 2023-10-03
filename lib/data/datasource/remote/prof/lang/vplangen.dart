import 'package:monami/core/class/curd.dart';
import 'package:monami/linkapi.dart';


class VpLangEnusres {
  Crud crud;
  VpLangEnusres(this.crud);

  getData(String userid) async {
    var response = await crud.postData(AppLink.VpLangEnusres, {
      // "id" : id.toString() ,
         "id" :  userid ,
    });
   return response.fold((l) => l, (r) => r) ;
  }
}