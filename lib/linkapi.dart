class AppLink {
  // ================================== SERVER  ============================================
  static const String serverusers = "https://monami.cloud/monami/users";
  static const String serverprof  = "https://monami.cloud/monami/prof";
//?!  imagesData
  static const String imagesData = "https://monami.cloud/monami/upload";
  static const String imagesCategory = "$imagesData/category";
  static const String imagesprof = "$imagesData/items";

//*::::::::::::::::::::::::::::::prof:::::::::::::::::::::::::::::::

//?! AUTH
  static const String singUp = "$serverusers/auth/signup.php";
  static const String login = "$serverusers/auth/login.php";
  static const String verfiycodeSingUp = "$serverusers/auth/verfiycode.php";
//?! FORGETPASSWORD
  static const String checkemailforgetpassword ="$serverusers/forgetpassword/checkemail.php";
  static const String resetpasswordforgetpassword ="$serverusers/forgetpassword/resetpassword.php";
  static const String verifycodeForgetpassword ="$serverusers/forgetpassword/verifyCode.php";
//?! HOME
  static const String homepage = "$serverusers/home.php";
  static const String VpLangfr = "$serverusers/lang/langfr.php";
  static const String vplangen = "$serverusers/lang/langen.php";
//?! FAVORITE 
  static const String AddFavorite       = "$serverusers/favorite/add.php";
  static const String RemoveFavorite    = "$serverusers/favorite/remov.php";
  static const String MyFavorite        = "$serverusers/favorite/view.php";
  static const String deletfromfavorite ="$serverusers/favorite/deletfromfavorite.php";
//?! EDATA 
  static const String editdatausers = "$serverusers/edata/edit.php";
  static const String viewdatausers = "$serverusers/edata/view.php";
 //?!  ITEMS 
  static const String itmes = "$serverusers/items/prof.php";
  static const String search = "$serverusers/items/search.php";
//?! Config
  static const String ServiceClients = "$serverusers/serviseclien.php";
  static const String Serviceprof = "$serverprof/serviseclien.php";
  // static const String search = "$serverusers/items/search.php";

//*::::::::::::::::::::::::::::::prof:::::::::::::::::::::::::::::::

//?! AUTH
  static const String editdataprof = "$serverprof/pdata/edit.php";
  static const String loginprof    = "$serverprof/auth/loginprof.php";
//?! EDATA 
  static const String viewdataprof = "$serverprof/pdata/viewprof.php";
//?! HOME
  static const String homepageprof  = "$serverprof/home.php";       
  static const String VpLangFrusres = "$serverprof/lang/langfr.php";
  static const String VpLangEnusres = "$serverprof/lang/langen.php";
//?! NOTIFICATION            
                                   //!? PROF
  static const String sendnotificationp  = "$serverusers/notification/notification.php";
  static const String viewnotification   = "$serverusers/notification.php";
                                  //!? USERS
  static const String sendnotification  = "$serverprof/notification/notification.php";
  static const String viewnotificationp = "$serverprof/notification.php";
//?! ACTIVE
  static const String active  = "$serverprof/active/active.php";
  static const String inactive  = "$serverprof/active/inactive.php";
  static const String category = "$serverprof/category/category.php";
            

}