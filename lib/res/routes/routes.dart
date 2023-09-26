


import 'package:getx/res/routes/routes_name.dart';
import 'package:getx/view/home/home_screen.dart';
import 'package:getx/view/login/login_screen.dart';
import 'package:getx/view/splash_screen.dart';
import 'package:get/get.dart';

class AppRoutes {

  static appRoutes () => [
   
   GetPage(
    name:RouteName.splashScreen,
    page: ()=>const Splash(),
    transition: Transition.rightToLeftWithFade,
    transitionDuration: const Duration(microseconds:200),
    ),
     GetPage(
          name: RouteName.loginScreen,
          page: () => const LoginScreen(),
          transition: Transition.rightToLeftWithFade,
          transitionDuration: const Duration(microseconds: 200),
        ),
         GetPage(
          name: RouteName.homeScreen,
          page: () => const HomeScreen(),
          transition: Transition.rightToLeftWithFade,
          transitionDuration: const Duration(microseconds: 200),
        )
  ];
  
}