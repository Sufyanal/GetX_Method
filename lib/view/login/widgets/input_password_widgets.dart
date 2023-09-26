
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/utils.dart';
import '../../../view_models/controller/login/login_model.dart';


class InputPassword extends StatelessWidget {
   InputPassword({super.key});
  final loginView = Get.put(LoginViewModel());

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                  Utils.snackBar('hintpass'.tr, 'hint'.tr);
                  }
                },
                obscureText: true,
                controller: loginView.passwordController.value,
                focusNode: loginView.passwordFocusNode.value,
                decoration: InputDecoration(
                    hintText: 'hintpass'.tr, border: OutlineInputBorder()),
              );
  }
}