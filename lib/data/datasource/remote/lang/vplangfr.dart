import 'package:monami/core/class/curd.dart';
import 'package:monami/linkapi.dart';


class VpLangFr {
  Crud crud;
  VpLangFr(this.crud);

  getData( ) async {
    var response = await crud.postData(AppLink.VpLangfr, {
      // "id" : id.toString() ,
      // "id" :  userid ,
    });
   return response.fold((l) => l, (r) => r) ;
  }
}