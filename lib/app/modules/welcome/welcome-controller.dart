import 'package:get/get.dart';
import 'package:hermesapp/app/data/models/card_model.dart';
import 'package:hermesapp/app/data/provider/api_provider.dart';
import 'package:hermesapp/app/routes/app-routes.dart';

class WelcomeController extends GetxController {

  final dataCards = Get.find<ApiProvider>();
  var listCards = <CardModel>[].obs;

  @override
  void onInit() {
    print('initted');
    loadNews();
    super.onInit();
  }

  openCard(id){
    var url = '/card-detail/' + id.toString();
    print(url);
    Get.toNamed(url, arguments: id.toString());
  }

  loadNews() async {
    var data = await dataCards.getDataForCards();
    data.forEach((e) {
      listCards.add(CardModel.fromJson(e));
    });
  }

}