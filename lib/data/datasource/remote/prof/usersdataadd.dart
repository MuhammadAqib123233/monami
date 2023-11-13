import 'package:monami/core/class/curd.dart';
import 'package:monami/linkapi.dart';

class addusersData {
  Crud crud;
  addusersData(this.crud);

 addusersdata(String name,String id, String desc, String category ,String age, String contry ) async {
    var response = await crud.postData(AppLink.editdatausers,{
           "name": name,
           "desc": desc,
           "category": category,
           "contry": contry,
           "age": age,
           "id": id.toString(),
    });
   return response.fold((l) => l, (r) => r) ;
  }
}