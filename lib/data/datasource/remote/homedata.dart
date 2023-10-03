import 'package:monami/core/class/curd.dart';
import 'package:monami/linkapi.dart';

class HomeData {
  Crud crud;
  HomeData(this.crud);

  getData() async {
    var response = await crud.postData(AppLink.homepage, {});
   return response.fold((l) => l, (r) => r) ;
  }

  searchData( search) async {
    var response = await crud.postData(AppLink.search, {"search" : search});
   return response.fold((l) => l, (r) => r) ;
  }

}
