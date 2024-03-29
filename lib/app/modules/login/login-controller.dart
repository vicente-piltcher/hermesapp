import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hermesapp/app/data/models/auth_model.dart';
import 'package:hermesapp/app/data/models/user_model.dart';
import 'package:hermesapp/app/data/provider/auth_provider.dart';
import 'package:hermesapp/app/routes/app-routes.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  final AuthApiClient api = AuthApiClient();

  final formKey = GlobalKey<FormState>();

  TextEditingController emailInput = TextEditingController();
  TextEditingController passwordInput = TextEditingController();

  RxBool showPass = false.obs;
  RxBool loading = false.obs;

  final storage = GetStorage();

  login() async {
    if (formKey.currentState!.validate()) {
      loading.value = true;
      final res = await api.login(emailInput.text, passwordInput.text);
      if (res['status'] == 200) {
        storage.write('token', res['access_token']);
        Get.offAllNamed(Routes.WELCOME);
        //Get.toNamed('/signup');
      }

      loading.value = false;
    }
  }

  toRegister(){
        Get.offAllNamed(Routes.SIGNUP);
  }
}
