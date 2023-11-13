import 'package:monami/core/class/curd.dart';
import 'package:monami/linkapi.dart';

class LoginData {
  Crud crud;
  LoginData(this.crud);

  postdata(   password, email ,) async {
    var response = await crud.postData(AppLink.login, {
       "password" : password,
       "email" : email,
    });
   
   return response.fold((l) => l, (r) => r) ;
  }
}
