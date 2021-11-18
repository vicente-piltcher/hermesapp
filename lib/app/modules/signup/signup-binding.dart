import 'package:get/get.dart';
import 'package:hermesapp/app/data/provider/auth_provider.dart';
import 'package:hermesapp/app/data/repository/auth_repository.dart';
import 'package:hermesapp/app/modules/login/login-controller.dart';
import 'package:hermesapp/app/modules/signup/signup-controller.dart';

class SignupBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignupController>(() => SignupController());
    Get.lazyPut<AuthApiClient>(() => AuthApiClient());
  }
}
