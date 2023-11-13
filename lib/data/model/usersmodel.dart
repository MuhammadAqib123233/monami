class usersModel {
  int ? id;
  String ?usersName;
  String ?usersAge;
  String ?usersImage;
  String ?usersEmail;
  String ?usersCuntry;
  String ?usersPassword;
  int ?usersApprove;
  // String ?usersTime;
  int ?usersCat;
  int ?usersLang;
  // String ?usersNotification;
  String ?usersDesc;


  usersModel(data, 
      {this.id,
      this.usersName,
      this.usersAge,
      this.usersImage,
      this.usersEmail,
      this.usersCuntry,
      this.usersPassword,
      this.usersApprove,
      this.usersCat,
      this.usersLang,
      this.usersDesc,

      });

  usersModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    usersName = json['users_name'];
    usersAge = json['users_age'];
    usersImage = json['users_image'];
    usersEmail = json['users_email'];
    usersCuntry = json['users_cuntry'];
    usersPassword = json['users_password'];
    usersApprove = json['users_approve'];

    usersCat = json['users_cat'];
    usersLang = json['users_lang'];
    usersDesc = json['users_desc'];
 
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['users_name'] = this.usersName;
    data['users_age'] = this.usersAge;
    data['users_image'] = this.usersImage;
    data['users_email'] = this.usersEmail;
    data['users_cuntry'] = this.usersCuntry;
    data['users_password'] = this.usersPassword;
    data['users_approve'] = this.usersApprove;

    data['users_cat'] = this.usersCat;
    data['users_lang'] = this.usersLang;
    data['users_desc'] = this.usersDesc;

    return data;
  }
}