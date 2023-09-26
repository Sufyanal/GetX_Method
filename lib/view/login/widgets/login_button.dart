import 'package:flutter/material.dart';
import 'package:getx/view_models/controller/login/login_model.dart';
import 'package:get/get.dart';
import '../../../res/components/rounded_button.dart';

class LoginButton extends StatelessWidget {
  final formkey;
  LoginButton({super.key, required this.formkey});

  final loginView = Get.put(LoginViewModel());

  @override
  Widget build(BuildContext context) {
    return Obx(() => RoundedButton(
          title: 'login'.tr,
          loading: loginView.loading.value,
          onPressed: () {
            if (formkey.currentState!.validate()) {
              loginView.loginApi();
            }
          },
          height: 50,
          width: 200,
          btncolor: Colors.grey,
        ));
  }
}
