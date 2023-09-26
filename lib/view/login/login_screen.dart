import 'package:flutter/material.dart';
import 'package:getx/res/components/rounded_button.dart';
import 'package:getx/utils/utils.dart';
import 'package:getx/view/login/widgets/input_email_widgets.dart';
import 'package:getx/view/login/widgets/input_password_widgets.dart';
import 'package:getx/view/login/widgets/login_button.dart';
import 'package:getx/view_models/controller/login/login_model.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final loginView = Get.put(LoginViewModel());

  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('login'.tr),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Form(
          key: _formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             InputEmail(),
              const SizedBox(
                height: 10,
              ),
             InputPassword(),
              SizedBox(
                height: 10,
              ),
            
             LoginButton(formkey: _formkey)
            ],
          ),
        ),
      ),
    );
  }
}
