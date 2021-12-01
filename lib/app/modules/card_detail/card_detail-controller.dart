import 'package:get/get.dart';
import 'package:hermesapp/app/data/models/card_model.dart';
import 'package:hermesapp/app/data/provider/api_provider.dart';
import 'package:hermesapp/app/routes/app-routes.dart';

class CardDetailController extends GetxController {
  final dataCards = Get.find<ApiProvider>();
  var title = ''.obs;
  var completed = false.obs;
  var user = ''.obs;

  @override
  void onInit() {
    print('cardView');
    loadTask(Get.arguments);
    super.onInit();
  }



  loadTask(id) async {
    var data = await dataCards.getDataCard(id);
    title.value = data['title'];
    completed.value = data['completed'];
    user.value = data['userId'];
  }

  // setData(CardModel data){
  //   card.value = CardModel.fromJson(data);
  // }
}



