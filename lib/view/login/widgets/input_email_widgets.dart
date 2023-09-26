

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/utils.dart';
import '../../../view_models/controller/login/login_model.dart';


class InputEmail extends StatelessWidget {
   InputEmail({super.key});

  final loginView = Get.put(LoginViewModel());
  
  @override
  Widget build(BuildContext context) {
    return   TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    Utils.snackBar('correct'.tr, 'hint'.tr);
                  }
                },
                controller: loginView.emailController.value,
                focusNode: loginView.emailFocusNode.value,
                decoration: InputDecoration(
                    hintText: 'hint'.tr, border: OutlineInputBorder()),
              );
  }
}