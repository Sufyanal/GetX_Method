import 'package:flutter/cupertino.dart';
import 'package:getx/repositery/login_repositery/login_repositery.dart';
import 'package:get/get.dart';

import '../../../models/login/login_response_model.dart';
import '../../../res/routes/routes_name.dart';
import '../../../utils/utils.dart';
import '../user_prefrence/user_prefrence_veiw_model.dart';


class LoginViewModel extends GetxController {
  final _api = LoginRepositery();

  Userpreference userPreference = Userpreference();

  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;

  RxBool loading = false.obs;

  void loginApi() {
    loading.value = true;
    Map data = {
      'email': emailController.value.text,
      'password': passwordController.value.text
    };
    _api.loginApi(data).then((value) {
      loading.value = false;

      if (value['error'] == 'user not found') {
        Utils.snackBar('Login', value['error']);
      } else {
        UserModel userModel = UserModel(token: value['token'], isLogin: true);

        userPreference.saveUser(userModel).then((value) {
          Get.delete<LoginViewModel>();
          Get.toNamed(RouteName.homeScreen)!.then((value) {});
          Utils.snackBar('Login', 'Login successfully');
        }).onError((error, stackTrace) {});
      }
    }).onError((error, stackTrace) {
      loading.value = false;
      Utils.snackBar('Error', error.toString());
    });
  }
}
