import 'package:get/get.dart';
import 'package:hermesapp/app/data/models/card_model.dart';
import 'package:hermesapp/app/data/provider/api_provider.dart';
import 'package:hermesapp/app/routes/app-routes.dart';

class CardDetailController extends GetxController {
  final dataCards = Get.find<ApiProvider>();
  var listCards = <CardModel>{}.obs;

  @override
  void onInit() {
    print('cardView');
    print(Get.arguments);
    super.onInit();
  }



  loadNews() async {
    var data = await dataCards.getDataForCards();
    //data.forEach((e) {
      listCards = CardModel.fromJson(data) as RxSet<CardModel>;
    //});
  }
}

