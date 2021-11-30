import 'package:get/get.dart';
import 'package:hermesapp/app/modules/card_detail/card_detail-binding.dart';
import 'package:hermesapp/app/modules/card_detail/card_detail-view.dart';
import 'package:hermesapp/app/modules/initial/initial-binding.dart';
import 'package:hermesapp/app/modules/initial/initial-view.dart';
import 'package:hermesapp/app/modules/login/login-binding.dart';
import 'package:hermesapp/app/modules/login/login-view.dart';
import 'package:hermesapp/app/modules/signup/signup-binding.dart';
import 'package:hermesapp/app/modules/signup/signup-view.dart';
import 'package:hermesapp/app/modules/welcome/welcome-binding.dart';
import 'package:hermesapp/app/modules/welcome/welcome-view.dart';
import 'package:hermesapp/app/routes/app-routes.dart';

class AppPages {
  static const INITIAL = Routes.INITIAL;

  static final routes = [
    GetPage(
      name: Routes.INITIAL,
      page: () => InitialPage(), //InitialView(),
      binding: InitialBinding(), //InitialBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.WELCOME,
      page: () => WelcomePage(),
      binding: WelcomeBinding(),
    ),
    GetPage(
      name: Routes.SIGNUP,
      page: () => SignupPage(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: Routes.CARD_DETAIL,
      page: () => CardDetail(),
      binding: CardDetailBinding(),
    ),
  ];
}
