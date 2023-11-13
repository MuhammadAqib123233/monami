import 'dart:io';
import 'package:monami/core/class/curd.dart';
import 'package:monami/linkapi.dart';

class userseditData {
  Crud crud;
  userseditData(this.crud);
  

  updateDatausers(Map data, [File? file] ) async {
    
    var response ;
    if(file == null){
      response = await crud.postData(AppLink.editdatausers, data );
    }else {
    response =  await crud.addRequestWithImageOne(AppLink.editdatausers, data ,file);
    }
   return response.fold((l) => l, (r) => r) ;
  } 
 
}



