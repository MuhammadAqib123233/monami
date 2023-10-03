class profModel {
  int? _profId;
  String? _profName;
  String? _profAge;
  String? _profImage;
  String? _profEmail;
  String? _profCuntry;
  String? _profPassword;
  int? _profApprove;
  String? _profTime;
  int? _profCat;
  int? _profLang;
  String? _profDesc;
  int? _profActive;
  int? _contryId;
  String? _contryName;
  String? _conrtyImage;

  profModel(
      {int? profId,
      String? profName,
      String? profAge,
      String? profImage,
      String? profEmail,
      String? profCuntry,
      String? profPassword,
      int? profApprove,
      String? profTime,
      int? profCat,
      int? profLang,
      String? profDesc,
      int? profActive,
      int? contryId,
      String? contryName,
      String? conrtyImage}) {
    if (profId != null) {
      this._profId = profId;
    }
    if (profName != null) {
      this._profName = profName;
    }
    if (profAge != null) {
      this._profAge = profAge;
    }
    if (profImage != null) {
      this._profImage = profImage;
    }
    if (profEmail != null) {
      this._profEmail = profEmail;
    }
    if (profCuntry != null) {
      this._profCuntry = profCuntry;
    }
    if (profPassword != null) {
      this._profPassword = profPassword;
    }
    if (profApprove != null) {
      this._profApprove = profApprove;
    }
    if (profTime != null) {
      this._profTime = profTime;
    }
    if (profCat != null) {
      this._profCat = profCat;
    }
    if (profLang != null) {
      this._profLang = profLang;
    }
    if (profDesc != null) {
      this._profDesc = profDesc;
    }
    if (profActive != null) {
      this._profActive = profActive;
    }
    if (contryId != null) {
      this._contryId = contryId;
    }
    if (contryName != null) {
      this._contryName = contryName;
    }
    if (conrtyImage != null) {
      this._conrtyImage = conrtyImage;
    }
  }

  int? get profId => _profId;
  set profId(int? profId) => _profId = profId;
  String? get profName => _profName;
  set profName(String? profName) => _profName = profName;
  String? get profAge => _profAge;
  set profAge(String? profAge) => _profAge = profAge;
  String? get profImage => _profImage;
  set profImage(String? profImage) => _profImage = profImage;
  String? get profEmail => _profEmail;
  set profEmail(String? profEmail) => _profEmail = profEmail;
  String? get profCuntry => _profCuntry;
  set profCuntry(String? profCuntry) => _profCuntry = profCuntry;
  String? get profPassword => _profPassword;
  set profPassword(String? profPassword) => _profPassword = profPassword;
  int? get profApprove => _profApprove;
  set profApprove(int? profApprove) => _profApprove = profApprove;
  String? get profTime => _profTime;
  set profTime(String? profTime) => _profTime = profTime;
  int? get profCat => _profCat;
  set profCat(int? profCat) => _profCat = profCat;
  int? get profLang => _profLang;
  set profLang(int? profLang) => _profLang = profLang;
  String? get profDesc => _profDesc;
  set profDesc(String? profDesc) => _profDesc = profDesc;
  int? get profActive => _profActive;
  set profActive(int? profActive) => _profActive = profActive;
  int? get contryId => _contryId;
  set contryId(int? contryId) => _contryId = contryId;
  String? get contryName => _contryName;
  set contryName(String? contryName) => _contryName = contryName;
  String? get conrtyImage => _conrtyImage;
  set conrtyImage(String? conrtyImage) => _conrtyImage = conrtyImage;

  profModel.fromJson(Map<String, dynamic> json) {
    _profId = json['prof_id'];
    _profName = json['prof_name'];
    _profAge = json['prof_age'];
    _profImage = json['prof_image'];
    _profEmail = json['prof_email'];
    _profCuntry = json['prof_cuntry'];
    _profPassword = json['prof_password'];
    _profApprove = json['prof_approve'];
    _profTime = json['prof_time'];
    _profCat = json['prof_cat'];
    _profLang = json['prof_lang'];
    _profDesc = json['prof_desc'];
    _profActive = json['prof_active'];
    _contryId = json['contry_id'];
    _contryName = json['contry_name'];
    _conrtyImage = json['conrty_image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['prof_id'] = this._profId;
    data['prof_name'] = this._profName;
    data['prof_age'] = this._profAge;
    data['prof_image'] = this._profImage;
    data['prof_email'] = this._profEmail;
    data['prof_cuntry'] = this._profCuntry;
    data['prof_password'] = this._profPassword;
    data['prof_approve'] = this._profApprove;
    data['prof_time'] = this._profTime;
    data['prof_cat'] = this._profCat;
    data['prof_lang'] = this._profLang;
    data['prof_desc'] = this._profDesc;
    data['prof_active'] = this._profActive;
    data['contry_id'] = this._contryId;
    data['contry_name'] = this._contryName;
    data['conrty_image'] = this._conrtyImage;
    return data;
  }
}