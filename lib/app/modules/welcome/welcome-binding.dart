import 'package:get/get.dart';
import 'package:hermesapp/app/data/provider/api_provider.dart';
import 'package:hermesapp/app/modules/welcome/welcome-controller.dart';

class WelcomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WelcomeController>(() => WelcomeController());
    Get.lazyPut<ApiProvider>(() => ApiProvider());
  }
}
