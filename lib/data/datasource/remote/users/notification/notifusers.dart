import 'package:monami/core/class/curd.dart';
import 'package:monami/linkapi.dart';


class sendnotificationData {
  Crud crud;
  sendnotificationData(this.crud);

  senndData( id , profid) async {
    var response = await crud.postData(AppLink.sendnotification, {
      "id" : id.toString(),
      "profid" : profid ,
    });
   return response.fold((l) => l, (r) => r) ;
  }
}