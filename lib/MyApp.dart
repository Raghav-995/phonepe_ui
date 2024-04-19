import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';
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
      home: AnimatedSplashScreen(
          duration: 2000,
          splash: Column(
            children: [
              ClipOval(
                child: SizedBox.fromSize(
                  size: Size.fromRadius(30.0),
                  child: Image.asset(
                    'assets/images/phonepeLogo.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "PhonePe",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          nextScreen: HomePage(),
          splashTransition: SplashTransition.fadeTransition,
          pageTransitionType: PageTransitionType.bottomToTop,
          backgroundColor: Theme.of(context).colorScheme.onPrimary),
    );
  }
}
