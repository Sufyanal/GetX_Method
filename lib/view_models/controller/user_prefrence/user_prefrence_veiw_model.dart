import 'package:getx/models/login/login_response_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';

class Userpreference extends GetxController {
  Future<bool> saveUser(UserModel responseModel) async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString('token', responseModel.token.toString());
     sp.setBool('isLogin', responseModel.isLogin!);
    return true;
  }

  Future<UserModel> getUser() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    String? token =   sp.getString('token');
     bool? isLogin = sp.getBool('isLogin');
    return UserModel(
      token:  token,
    );
  }

   Future<bool> removeUser(UserModel responseModel) async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.clear();
    return true;
  }
}
