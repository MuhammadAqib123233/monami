import 'package:monami/core/class/curd.dart';
import 'package:monami/linkapi.dart';

class activeData {
  Crud crud;
 activeData(this.crud);
 
  active(String id) async {
    var response = await crud.postData(
        AppLink.active, {"id": id.toString()});
    return response.fold((l) => l, (r) => r);
  }

  inactive( String id) async {
    var response = await crud.postData(
        AppLink.inactive, {"id": id});
    return response.fold((l) => l, (r) => r);
  }
}