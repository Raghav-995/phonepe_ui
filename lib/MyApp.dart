import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';
import 'package:phonepe_ui/splashscreen.dart';
import 'package:phonepe_ui/themes/themes.dart';
import 'pages/HomePage.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

class MyApp extends StatelessWidget {
  final ThemeController controller = Get.put(ThemeController());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        theme: controller.themeLight,
        darkTheme: controller.themeDark,
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        home: SplashScreen());
  }
}
