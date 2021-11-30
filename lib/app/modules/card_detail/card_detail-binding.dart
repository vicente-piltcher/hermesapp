import 'package:get/get.dart';
import 'package:hermesapp/app/data/provider/api_provider.dart';
import 'package:hermesapp/app/modules/card_detail/card_detail-controller.dart';

class CardDetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(CardDetailController(), permanent: false);
    Get.lazyPut<ApiProvider>(() => ApiProvider());
  }
}
