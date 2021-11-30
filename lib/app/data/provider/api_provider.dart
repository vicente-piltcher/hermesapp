import 'package:get/get.dart';
import 'package:hermesapp/app/dot_env.dart';
import 'package:hermesapp/app/routes/app-routes.dart';
import 'package:get_storage/get_storage.dart';

class ApiProvider extends GetConnect {
  final storage = GetStorage();

  getHomeData() async {
    var response = await getWithToken(apiURL + '/data-home');
    if (response.statusCode == 200) {
      return response.body['slides'];
    }
  }

  getDataForCards() async{
    var response = await get('https://jsonplaceholder.typicode.com/todos');
    if (response.statusCode == 200) {
      return response.body;
    }
  }

  getWithToken(url) {
    final token = verifyAuth();
    return get(url, headers: {'Authorization': 'Bearer ${token}'});
  }

  verifyAuth() {
    var token = storage.read('token');
    if (token != null) {
      return token;
    } else {
      return Routes.LOGIN;
    }
  }
}
