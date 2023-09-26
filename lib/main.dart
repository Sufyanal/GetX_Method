import 'package:flutter/material.dart';
import 'package:getx/res/getx_localization/languages.dart';
import 'package:getx/res/routes/routes.dart';
import 'package:getx/view/splash_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Languages(),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 108, 75, 167)),
        useMaterial3: true,
      ),
      home: const Splash(),
      getPages: AppRoutes.appRoutes(),
    );
  }
}
