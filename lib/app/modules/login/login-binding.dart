import 'package:get/get.dart';
import 'package:hermesapp/app/data/provider/auth_provider.dart';
import 'package:hermesapp/app/data/repository/auth_repository.dart';
import 'package:hermesapp/app/modules/login/login-controller.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
    Get.lazyPut<AuthRepository>(() => AuthRepository());
    Get.lazyPut<AuthApiClient>(() => AuthApiClient());
  }
}
