import 'package:flutter/material.dart';
import 'package:philips_piano_academy/constants/app_colors.dart';
import 'package:philips_piano_academy/constants/app_styles.dart';
import 'package:philips_piano_academy/utils/widget_functions.dart';

import '../../../constants/app_images.dart';
import '../widgets/buttons.dart';
import '../widgets/inputs.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController mobileController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPassword = true;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        backgroundColor: AppColors.secondary,
        body: SafeArea(
          top: false,
          child: Stack(
            children: [
              Container(
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(bottom: 65),
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                width: double.infinity,
                decoration:   BoxDecoration(
                    color: AppColors.primary,
                    border: Border.all(width: 1, color: AppColors.primary),
                    borderRadius: BorderRadius.vertical(bottom: Radius.circular(40))
                ),
                height: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [

                    SizedBox(
                      width: 224,
                      child: Image.asset(AppImages.logo),
                    ),

                    addHeight(30),

                    EditableBox(
                      controller: mobileController,
                      hint: 'Phone number',
                      type: TextInputType.emailAddress,),

                    addHeight(15),

                    EditableBoxPass(
                      controller: passwordController,
                        isPassword: isPassword,
                        hint: "Enter your password",
                        onPressed: () {
                          setState(() {isPassword = !isPassword;},);
                        },
                        type: TextInputType.visiblePassword),

                    addHeight(60),

                    WhiteButton(
                      buttonText: 'Login',
                      onTap: () {  },
                    ),

                    addHeight(30),

                  ],
                ),
              ),

              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                            text: "Don't have an account yet? ",
                            style: AppStyles.small),
                        TextSpan(
                          text: 'Create One',
                          style: AppStyles.smallBold),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
