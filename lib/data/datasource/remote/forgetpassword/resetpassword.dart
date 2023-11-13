import 'package:monami/core/class/curd.dart';
import 'package:monami/linkapi.dart';

class ResetPasswordForgetPasswordData {
  Crud crud;
  ResetPasswordForgetPasswordData(this.crud);

  postdata(String password, String email) async {
    var response = await crud.postData(AppLink.resetpasswordforgetpassword, {
       "password" : password,
       "email" : email,
    });
   return response.fold((l) => l, (r) => r) ;
  }
}