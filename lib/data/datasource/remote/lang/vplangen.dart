import 'package:monami/core/class/curd.dart';
import 'package:monami/linkapi.dart';


class VpLangEn {
  Crud crud;
  VpLangEn(this.crud);

getData( ) async {
    var response = await crud.postData(AppLink.vplangen, {
      // "id" : id.toString(),
        //  "id" :  userid ,
    });
   return response.fold((l) => l, (r) => r) ;
  }
}