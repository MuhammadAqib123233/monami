import 'package:monami/core/class/curd.dart';
import 'package:monami/linkapi.dart';

class usersviewData {
  Crud crud;
  usersviewData(this.crud);

  getData( id,  ) async {
    var response = await crud.postData(AppLink.viewdatausers, {"id" : id });
   return response.fold((l) => l, (r) => r) ;
  }
}
