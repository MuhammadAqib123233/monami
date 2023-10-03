import 'package:monami/core/class/curd.dart';
import 'package:monami/linkapi.dart';

class MyFavoriteData {
  Crud crud;
  MyFavoriteData(this.crud);

  getData( int id ) async {
    var response = await crud.postData(AppLink.MyFavorite,{"id" : id});
   return response.fold((l) => l, (r) => r) ;
  }

    Deletfromfavorite( id ) async {
    var response = await crud.postData(AppLink.deletfromfavorite,{"id" : id});
   return response.fold((l) => l, (r) => r) ;
  }
}
