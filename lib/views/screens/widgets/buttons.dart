import 'package:flutter/material.dart';
import 'package:philips_piano_academy/constants/app_styles.dart';
import 'package:remixicon/remixicon.dart';
import 'package:touchable_opacity/touchable_opacity.dart';
import '../../../constants/app_colors.dart';

class PrimaryButton extends StatelessWidget {
  PrimaryButton({
    Key? key,
    required this.buttonText,
    required this.onTap,
    this.isContinue = false,
  }) : super(key: key);

  String buttonText;
  VoidCallback onTap;
  bool isContinue;

  @override
  Widget build(BuildContext context) {
    return TouchableOpacity(
      onTap: onTap,
      activeOpacity: 0.8,
      child: Container(
        height: 57,
        width: double.maxFinite,
        padding: EdgeInsets.all(15),
        decoration:   BoxDecoration(
            color: AppColors.primary,
            border: Border.all(width: 0, color: AppColors.primary),
            borderRadius: BorderRadius.circular(100)
        ),
        child: Stack(
          children: [
            Center(
              child: Text(
                buttonText,
                style: AppStyles.buttonPrimary,),
            ),

            Align(
                alignment: Alignment.centerRight,
                child: Icon(Remix.arrow_right_line, color: AppColors.fontColorOnSecondary, size: isContinue?20:0))

          ],
        ),
      ),
    );
  }
}

class WhiteButton extends StatelessWidget {
  WhiteButton({
    Key? key,
    required this.buttonText,
    required this.onTap,
    this.isContinue = false,
  }) : super(key: key);

  String buttonText;
  VoidCallback onTap;
  bool isContinue;

  @override
  Widget build(BuildContext context) {
    return TouchableOpacity(
      onTap: onTap,
      activeOpacity: 0.8,
      child: Container(
        height: 57,
        width: double.maxFinite,
        padding: EdgeInsets.all(15),
        decoration:   BoxDecoration(
            color: AppColors.fontColorOnPrimary,
            border: Border.all(width: 0, color: AppColors.primary),
            borderRadius: BorderRadius.circular(100)
        ),
        child: Stack(
          children: [
            Center(
              child: Text(
                buttonText,
                style: AppStyles.button),
            ),

            Align(
                alignment: Alignment.centerRight,
                child: Icon(Remix.arrow_right_line, color: AppColors.fontColorOnSecondary, size: isContinue?20:0))

          ],
        ),
      ),
    );
  }
}


class PrimaryButtonLoader extends StatelessWidget {
  const PrimaryButtonLoader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 57,
      width: double.maxFinite,
      padding: const EdgeInsets.all(5),
      decoration:   BoxDecoration(
          color: AppColors.primary.withOpacity(0.8),
          border: Border.all(width: 0, color: AppColors.primary),
          borderRadius: BorderRadius.circular(100)
      ),
      child: const Center(
          child: CircularProgressIndicator(
            color: Colors.white,)),
    );
  }
}

