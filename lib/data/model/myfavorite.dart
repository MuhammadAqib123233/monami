class myfavoriteModel {
 String? favorieId;
 String? favorieUsersid;
 String? favorieProfid;
 String? profId;
 String? profName;
 String? profAge;
 String? profImage;
 String? profEmail;
 String? profCuntry;
 String? profPassword;
 String? profApprove;
 String? profTime;
 String? profCat;
 String? profLang;
 String? profDesc;
 String? id;

  myfavoriteModel(
      {this.favorieId,
      this.favorieUsersid,
      this.favorieProfid,
      this.profId,
      this.profName,
      this.profAge,
      this.profImage,
      this.profEmail,
      this.profCuntry,
      this.profPassword,
      this.profApprove,
      this.profTime,
      this.profCat,
      this.profLang,
      this.profDesc,
      this.id});

  myfavoriteModel.fromJson(Map<String, dynamic> json) {
    favorieId = json['favorie_id'];
    favorieUsersid = json['favorie_usersid'];
    favorieProfid = json['favorie_profid'];
    profId = json['prof_id'];
    profName = json['prof_name'];
    profAge = json['prof_age'];
    profImage = json['prof_image'];
    profEmail = json['prof_email'];
    profCuntry = json['prof_cuntry'];
    profPassword = json['prof_password'];
    profApprove = json['prof_approve'];
    profTime = json['prof_time'];
    profCat = json['prof_cat'];
    profLang = json['prof_lang'];
    profDesc = json['prof_desc'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['favorie_id'] = this.favorieId;
    data['favorie_usersid'] = this.favorieUsersid;
    data['favorie_profid'] = this.favorieProfid;
    data['prof_id'] = this.profId;
    data['prof_name'] = this.profName;
    data['prof_age'] = this.profAge;
    data['prof_image'] = this.profImage;
    data['prof_email'] = this.profEmail;
    data['prof_cuntry'] = this.profCuntry;
    data['prof_password'] = this.profPassword;
    data['prof_approve'] = this.profApprove;
    data['prof_time'] = this.profTime;
    data['prof_cat'] = this.profCat;
    data['prof_lang'] = this.profLang;
    data['prof_desc'] = this.profDesc;
    data['id'] = this.id;
    return data;
  }
}