import 'package:get/get.dart';
import 'package:monami/core/constant/routes.dart';
import 'package:monami/core/middleware/middleware.dart';
import 'package:monami/view/screen/Config/Conditions.dart';
import 'package:monami/view/screen/Config/admin/service_Clients.dart';
import 'package:monami/view/screen/admin/home/add_pdata.dart';
import 'package:monami/view/screen/admin/home/productedetails.dart';
import 'package:monami/view/screen/users/profile/edit_profile.dart';
import 'package:monami/view/screen/users/home/lang/langenitems.dart';
import 'package:monami/view/screen/users/home/myfavored.dart';
import 'package:monami/view/screen/users/home/productedetails.dart';
import 'package:monami/view/screen/users/home/productedetailsFav.dart';
import 'package:monami/view/screen/users/home/lang/langfritems.dart';
import 'package:monami/view/screen/users/home/viewnotificion.dart';
import 'package:monami/view/screen/Config/Setting.dart';
import 'package:monami/view/screen/Config/language.dart';
import 'package:monami/view/screen/Config/service_Clients.dart';
import 'package:monami/view/screen/users/auth/chesir.dart';
import 'package:monami/view/screen/depar.dart';
import 'package:monami/view/screen/admin/home/Home.dart';
import 'package:monami/view/screen/admin/home/homepage.dart';
import 'package:monami/view/screen/admin/home/notifprof.dart';
import 'package:monami/view/screen/admin/lang/langenusers.dart';
import 'package:monami/view/screen/admin/login_prof.dart';
import 'package:monami/view/screen/catigory/profile_prof.dart';
import 'package:monami/view/screen/users/home/Home.dart';
import 'package:monami/view/screen/users/auth/forgetPassword/forget_Password.dart';
import 'package:monami/view/screen/users/auth/verfiycodesignup.dart';
import 'package:monami/view/screen/users/auth/login.dart';
import 'package:monami/view/screen/users/auth/forgetPassword/resetpassword.dart';
import 'package:monami/view/screen/users/auth/forgetPassword/successResetPassword.dart';
import 'package:monami/view/screen/users/auth/success_Singup.dart';
import 'package:monami/view/screen/users/auth/forgetPassword/verfiycode.dart';
import 'package:monami/view/screen/users/home/favorite.dart';
import 'package:monami/view/screen/users/profile/profil.dart';
import 'package:monami/view/screen/users/auth/SignUp.dart';
import 'package:monami/view/widget/notifcation/notifusers.dart';


List<GetPage<dynamic>>? routes =[
GetPage(name: "/", page: () =>const login1() , middlewares: [
  MyMiddleware()
] ),
GetPage(name: AppRoutes.login, page: ()               =>const Login() ),
GetPage(name: AppRoutes.singUp, page: ()              =>const SignUp() ),
GetPage(name: AppRoutes.verfiycode, page: ()          =>const VerfiyCode() ),
GetPage(name: AppRoutes.ResetPassword, page: ()       =>const ResetPassword() ),
GetPage(name: AppRoutes.forgetPassword, page: ()      =>const ForgetPassword() ),
GetPage(name: AppRoutes.successResetPassword, page:() =>const SuccessResetPassword() ),
GetPage(name: AppRoutes.successSignup, page: ()       =>const SuccessSignup() ),
GetPage(name: AppRoutes.verfiycodesignup, page: ()    =>const Verfiycodesignup() ),
///////////////////////////// SCREEN ///////////////////////////////
GetPage(name: AppRoutes.homepage, page: ()          =>const HomeScreen()),
///////////////////// onBoarding ///////////////////////////////
GetPage(name: AppRoutes.ProducteDetails,page:()   =>const ProducteDetails()),
GetPage(name: AppRoutes.usersprofileDetails,page:()   =>const usersprofileDetails()),
GetPage(name: AppRoutes.ProducteDetailsFav,page:()=>const ProducteDetailsFav()),
GetPage(name: AppRoutes.MyFavorite, page: ()      =>const MyFavorite()),
GetPage(name: AppRoutes.favorite, page: ()        =>const favorite()),
GetPage(name: AppRoutes.prlnt_En, page: ()        =>const prlnt_En()),
GetPage(name: AppRoutes.prlnt_fr, page: ()        =>const prlnt_Fr()),
GetPage(name: AppRoutes.profile_prof, page: ()    =>const profile_prof()),
GetPage(name: AppRoutes.chesirLogin, page: ()     =>const chesirLogin()),
GetPage(name: AppRoutes.LoginProf, page: ()       =>const LoginProf()),
GetPage(name: AppRoutes.edit, page: ()            =>const editusersprofile()),
GetPage(name: AppRoutes.profile2_0, page: ()      =>const profile2_0()),

// ! prof

GetPage(name: AppRoutes.HomePageprof,    page: () =>const HomePageprof()),
GetPage(name: AppRoutes.Homescreenprof,  page: () =>const Homescrenprof()),
GetPage(name: AppRoutes.editprofileprof, page: () =>const editprofileprof()),
GetPage(name: AppRoutes.profile_prof,    page: () =>const profile_prof()),
GetPage(name: AppRoutes.prlntUsers_En,   page: () =>const prlntUsers_En()),
// GetPage(name: AppRoutes.prlntUsers_Fr,   page: () =>const prlntUsers_Fr()),
GetPage(name: AppRoutes.testitems,       page: () =>const testitems()),
GetPage(name: AppRoutes.notifprof,       page: () =>const notifprof()),
GetPage(name: AppRoutes.notifusers,      page: () =>const  notifusers()),
GetPage(name: AppRoutes.Setting,         page: () =>const Setting()),
GetPage(name: AppRoutes.language,        page: () =>const language()),
GetPage(name: AppRoutes.serviceClients,  page: () =>const serviceClients()),
GetPage(name: AppRoutes.serviceProf,     page: () =>const serviceProf()),
GetPage(name: AppRoutes.Conditions,     page: () =>const Conditions()),

];
