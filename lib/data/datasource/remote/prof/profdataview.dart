import 'package:monami/core/class/curd.dart';
import 'package:monami/linkapi.dart';

class profviewData {
  Crud crud;
  profviewData(this.crud);

  getData(String id,  ) async {
    var response = await crud.postData(AppLink.viewdataprof, {"id" : id.toString() });
   return response.fold((l) => l, (r) => r) ;
  }
}
