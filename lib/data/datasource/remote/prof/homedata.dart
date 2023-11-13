import 'package:monami/core/class/curd.dart';
import 'package:monami/linkapi.dart';

class HomeProfData {
  Crud crud;
  HomeProfData(this.crud);

  getData() async {
    var response = await crud.postData(AppLink.homepageprof, {});
   return response.fold((l) => l, (r) => r) ;
  }

  // searchData(String search) async {
  //   var response = await crud.postData(AppLink.search, {"search" : search});
  //  return response.fold((l) => l, (r) => r) ;
  // }
}
