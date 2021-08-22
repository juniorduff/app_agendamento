import 'package:agendamento_app/utils/custo_dio.dart';
import "package:shared_preferences/shared_preferences.dart";

class LoginRepository {
  login() async {
    final dio = CustomDio().getDio;
    final response = await dio
        .post('/test', data: {'password': "admin@admin", "email": "admin"});
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString("token", response.data["token"]);
  }
}
