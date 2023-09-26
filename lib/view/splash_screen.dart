import 'package:flutter/material.dart';
import 'package:getx/res/colors/app_colors.dart';

import 'package:getx/view_models/services/splash_services.dart';
import 'package:get/get.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  SplashServices splashServices = SplashServices();

  @override
  void initState() {
    splashServices.isLogin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
          child: Text(
        'wellcome'.tr,
        style: TextStyle(color: AppColors.blackColor),
      )),
    );
  }
}
