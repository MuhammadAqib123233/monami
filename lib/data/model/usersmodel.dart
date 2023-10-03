class usersModel {
  String ? id;
  String ?usersName;
  String ?usersAge;
  String ?usersImage;
  String ?usersEmail;
  String ?usersCuntry;
  String ?usersPassword;
  String ?usersApprove;
  String ?usersTime;
  String ?usersCat;
  String ?usersLang;
  String ?usersNotification;
  String ?usersDesc;
  String ?categoryId;
  String ?categoryName;
  String ?categoryImage;

  usersModel(data, 
      {this.id,
      this.usersName,
      this.usersAge,
      this.usersImage,
      this.usersEmail,
      this.usersCuntry,
      this.usersPassword,
      this.usersApprove,
      this.usersTime,
      this.usersCat,
      this.usersLang,
      this.usersDesc,
      this.usersNotification,
      this.categoryId,
      this.categoryName,
      this.categoryImage});

  usersModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    usersName = json['users_name'];
    usersAge = json['users_age'];
    usersImage = json['users_image'];
    usersEmail = json['users_email'];
    usersCuntry = json['users_cuntry'];
    usersPassword = json['users_password'];
    usersApprove = json['users_approve'];
    usersTime = json['users_time'];
    usersCat = json['users_cat'];
    usersLang = json['users_lang'];
    usersDesc = json['users_desc'];
    usersNotification = json['users_notification'];
    categoryId = json['category_id'];
    categoryName = json['category_name'];
    categoryImage = json['category_image'];
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
    data['users_time'] = this.usersTime;
    data['users_cat'] = this.usersCat;
    data['users_lang'] = this.usersLang;
    data['users_desc'] = this.usersDesc;
    data['users_notification'] = this.usersNotification;
    data['category_id'] = this.categoryId;
    data['category_name'] = this.categoryName;
    data['category_image'] = this.categoryImage;
    return data;
  }
}