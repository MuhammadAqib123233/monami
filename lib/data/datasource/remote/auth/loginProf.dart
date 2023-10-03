import 'package:monami/core/class/curd.dart';
import 'package:monami/linkapi.dart';

class LoginprofData {
  Crud crud;
  LoginprofData(this.crud);

  postdata(  String password, String email ,) async {
    var response = await crud.postData(AppLink.loginprof, {
       "password" : password,
       "email" : email,
    });
   
   return response.fold((l) => l, (r) => r) ;
  }
}
