import 'package:get/get.dart';
import 'package:hermesapp/app/modules/welcome/welcome-controller.dart';

class WelcomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WelcomeController>(() => WelcomeController());
  }
}
