class profModel {
  int? profId;
  String? profName;
  String? profAge;
  String? profImage;
  String? profEmail;
  String? profCuntry;
  String? profPassword;
  int? profApprove;
  String? profTime;
  int? profCat;
  int? profLang;
  String? profDesc;
  int? profActive;

  profModel(
      {this.profId,
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
      this.profActive});

  profModel.fromJson(Map<String, dynamic> json) {
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
    profActive = json['prof_active'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
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
    data['prof_active'] = this.profActive;
    return data;
  }
}