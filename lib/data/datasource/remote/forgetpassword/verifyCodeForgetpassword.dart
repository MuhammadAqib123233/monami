import 'package:monami/core/class/curd.dart';
import 'package:monami/linkapi.dart';

class VerifyCodeForgetPasswordData {
  Crud crud;
  VerifyCodeForgetPasswordData(this.crud);

  postdata(String email ,String verfiycode) async {
    var response = await crud.postData(AppLink.verifycodeForgetpassword, {
       "email" : email,
       "verifycode" :verfiycode ,
    });
   
   return response.fold((l) => l, (r) => r) ;
  }
}
