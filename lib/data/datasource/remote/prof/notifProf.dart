import 'package:monami/core/class/curd.dart';
import 'package:monami/linkapi.dart';



class notificationProfData {
  Crud crud;
  notificationProfData(this.crud);

  senndData(String profid ,String id) async {
    var response = await crud.postData(AppLink.sendnotification, {
      "id" : id.toString(),
      "profid" : profid ,

    });
   return response.fold((l) => l, (r) => r) ;
  } 
 
}