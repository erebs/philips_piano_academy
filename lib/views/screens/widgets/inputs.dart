import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:philips_piano_academy/constants/app_styles.dart';
import 'package:remixicon/remixicon.dart';
import 'package:touchable_opacity/touchable_opacity.dart';
import '../../../constants/app_colors.dart';


class EditableBox extends StatelessWidget {
  EditableBox({
    Key? key,
    required this.controller,
    required this.hint,
    required this.type,
    this.prefix="",
    this.isPassword = false,
    this.maxLength = 100,
    this.icon,
    this.onPressed,
    this.onChanged,
  }) : super(key: key);

  final TextEditingController controller;
  final String hint;
  final TextInputType type;
  final GestureTapCallback? onPressed;
  Icon? icon;
  bool isPassword;
  int maxLength;
  String prefix;
  Function(String value) ? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 57,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration:   BoxDecoration(
          color: AppColors.inputBackgroundColorOnBlack,
          border: Border.all(width: 0, color: AppColors.inputBackgroundColorOnBlack),
          borderRadius: BorderRadius.circular(100)
      ),
      child: TextField(
        obscureText: isPassword,
        keyboardType: type,
        maxLength: maxLength,
        style: AppStyles.input,
        // onChanged: onChanged!,
        decoration: InputDecoration(
            counterText: "",
            border: InputBorder.none,
            prefix: Text(prefix, style: AppStyles.input,),
            suffixIcon: icon!=null?IconButton(
              icon: icon!,
              onPressed: () => { onPressed!() },
            ):null,
            alignLabelWithHint: true,
            enabledBorder:new OutlineInputBorder(
              borderSide: new BorderSide(color:Colors.transparent),
              borderRadius: BorderRadius.circular(10.0),
            ),
            hintText: hint,
            contentPadding: EdgeInsets.only(left: 15,right: 15),
            hintStyle:AppStyles.placeHolder
        ),
        controller:controller,
      ),

    );
  }
}


class EditableBoxPass extends StatelessWidget {
  EditableBoxPass({
    Key? key,
    required this.controller,
    required this.hint,
    required this.type,
    this.prefix="",
    this.isPassword = false,
    this.maxLength = 100,
    this.icon,
    this.onPressed,
    this.onChanged,
  }) : super(key: key);

  final TextEditingController controller;
  final String hint;
  final TextInputType type;
  final GestureTapCallback? onPressed;
  Icon? icon;
  bool isPassword;
  int maxLength;
  String prefix;
  Function(String value) ? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 57,
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration:   BoxDecoration(
          color: AppColors.inputBackgroundColorOnBlack,
          border: Border.all(width: 0, color: AppColors.inputBackgroundColorOnBlack),
          borderRadius: BorderRadius.circular(100)
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              obscureText: isPassword,
              keyboardType: type,
              maxLength: maxLength,
              style: AppStyles.input,
              // onChanged: onChanged!,
              decoration: InputDecoration(
                  counterText: "",
                  border: InputBorder.none,
                  floatingLabelBehavior: FloatingLabelBehavior.never,

                  alignLabelWithHint: true,
                  enabledBorder:new OutlineInputBorder(
                    borderSide: new BorderSide(color:Colors.transparent),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  hintText: hint,
                  contentPadding: EdgeInsets.only(left: 15,right: 15),
                  hintStyle: AppStyles.placeHolder
              ),
              controller:controller,
            ),
          ),

          IconButton(
            icon: ((isPassword?const Icon(Remix.eye_close_line, size: 20, color: Colors.grey,):const Icon(Remix.eye_line, size: 20, color: Colors.grey,))),
            onPressed: () => { onPressed!() },
          ),
        ],
      ),


    );
  }
}



class DropBox extends StatelessWidget {
  DropBox({
    Key? key,
    required this.hint,
    this.prefix="",
    this.onPressed,
  }) : super(key: key);

  final String hint;
  final GestureTapCallback? onPressed;
  String prefix;

  @override
  Widget build(BuildContext context) {
    return TouchableOpacity(
      onTap: () => { onPressed!() },
      child: Container(
        height: 55,
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(left: 20, right: 10),
        decoration:   BoxDecoration(
            color: AppColors.inputBackgroundColorOnBlack,
            border: Border.all(width: 0, color: AppColors.inputBackgroundColorOnBlack),
            borderRadius: BorderRadius.circular(10)
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: prefix.length>0?
              Text(
                  prefix.length>10?prefix.substring(0,10)+"...":prefix,
                  style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold,)):
              Text(
                hint,
                style: const TextStyle(
                  fontSize: 13,
                  color:Colors.grey,
                  fontWeight: FontWeight.normal,),),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Icon(Remix.arrow_drop_down_fill, color: Colors.black, size: 30,),
            )
          ],
        )

      ),
    );
  }
}

