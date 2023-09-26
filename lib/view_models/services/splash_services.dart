import 'dart:async';

import 'package:getx/res/routes/routes_name.dart';
import 'package:getx/view_models/controller/user_prefrence/user_prefrence_veiw_model.dart';
import 'package:get/get.dart';

class SplashServices {
  
  Userpreference userpreference = Userpreference();
  void isLogin() {
    userpreference.getUser().then((value) {
      print(value.token);
      print(value.isLogin);

      if (value.isLogin == false || value.isLogin.toString() == 'null') {
        Timer(
            const Duration(seconds: 3), () => Get.toNamed(RouteName.loginScreen));
      } else {
        Timer(
            const Duration(seconds: 3), () => Get.toNamed(RouteName.homeScreen));
      }
    });
  }
}
