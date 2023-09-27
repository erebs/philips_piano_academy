import 'package:flutter/material.dart';
import 'package:philips_piano_academy/constants/app_colors.dart';
import 'package:philips_piano_academy/constants/app_images.dart';
import 'package:philips_piano_academy/views/screens/home/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';

import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    screenNavigation();

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.primary,
          body: Center(
            child: SizedBox(
              width: 224,
              child: Image.asset(AppImages.logo),
            ),
          ),
        ));
  }


  screenNavigation () async {

    final SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isLoggedIn = (prefs.getBool('is_logged_in') == null || prefs.getBool('is_logged_in') == false ? false : true);

    Future.delayed(const Duration (seconds: 3),(){
      Get.off(()=>isLoggedIn ? const HomeScreen() :  const LoginScreen(),
          transition: Transition.native,
          duration: const Duration(microseconds: 1200));
    });

  }

}
