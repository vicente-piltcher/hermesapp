import 'package:get/get.dart';
import 'package:hermesapp/app/modules/initial/initial-controller.dart';

class InitialBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<InitialController>(() => InitialController());
  }
}