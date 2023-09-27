import 'package:flutter/material.dart';
import 'package:philips_piano_academy/constants/app_colors.dart';
class AppStyles{

  static TextStyle normal = const TextStyle(
    color: AppColors.primary,
    fontFamily: "DM Sans",
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 42/16,
  );

  static TextStyle placeHolder = const TextStyle(
    fontFamily: "DM Sans",
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: AppColors.inputPlaceholderText,
    height: 23/18,
  );

  static TextStyle input = const TextStyle(
    fontFamily: "DM Sans",
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: AppColors.primary,
    height: 23/18,
  );

  TextStyle normalOnDark = const TextStyle(
    fontFamily: "DM Sans",
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.fontColorOnPrimary,
    height: 21/16,
  );

  static TextStyle button = const TextStyle(
    fontFamily: "DM Sans",
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: AppColors.primary,
    height: 26/20,
  );

  static TextStyle buttonPrimary = const TextStyle(
    fontFamily: "DM Sans",
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: AppColors.primary,
    height: 26/20,
  );

  static TextStyle small = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: AppColors.fontColorOnPrimary,
    height: 18/14,
  );

  static TextStyle smallBold = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: AppColors.fontColorOnPrimary,
    height: 18/14,
  );

  TextStyle h2 = const TextStyle(
    fontFamily: "DM Sans",
    fontSize: 24,
    fontWeight: FontWeight.w500,
    color: AppColors.fontColorOnWhite,
    height: 31/24,
  );

  TextStyle h3 = const TextStyle(
    fontFamily: "DM Sans",
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: AppColors.fontColorOnWhite,
    height: 26/20,
  );

  TextStyle sideTitle = const TextStyle(
    fontFamily: "DM Sans",
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.fontColorOnWhite,
    height: 21/16,
  );

  TextStyle notifications = const TextStyle(
    fontFamily: "DM Sans",
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.fontColorOnWhite,
    height: 21/16,
  );

  TextStyle notificationsDisabled = const TextStyle(
    fontFamily: "DM Sans",
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.disabledColor,
    height: 21/16,
  );

  TextStyle bottomBar = const TextStyle(
    fontFamily: "DM Sans",
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.fontColorOnPrimary,
    height: 21/16,
  );

  TextStyle bottomBarDisabled = const TextStyle(
    fontFamily: "DM Sans",
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.disabledColor,
    height: 18/14,
  );

}