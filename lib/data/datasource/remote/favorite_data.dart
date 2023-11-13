import 'package:monami/core/class/curd.dart';
import 'package:monami/linkapi.dart';

class FavoriteData {
  Crud crud;
  FavoriteData(this.crud);
  addFavorite( usersid,  profid) async {
    var response = await crud.postData(
        AppLink.AddFavorite, {"usersid": usersid, "profid": profid});
    return response.fold((l) => l, (r) => r);
  }

  removeFavorite( usersid,  profid) async {
    var response = await crud.postData(
        AppLink.RemoveFavorite, {"usersid": usersid, "profid": profid});
    return response.fold((l) => l, (r) => r);
  }
}