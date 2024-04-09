import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:dana_abadi_app/src/theme_manager/color_manager.dart';
import 'package:dana_abadi_app/src/theme_manager/font_manager.dart';
import 'package:dana_abadi_app/src/theme_manager/style_manager.dart';
import 'package:dana_abadi_app/src/theme_manager/value_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFieldLogin extends StatelessWidget {
  const CustomTextFieldLogin({
    super.key,
    required this.labelName,
    required this.hintext,
    required this.controller,
    // this.isObscure = false,
  });

  final String labelName;
  final String hintext;
  // final bool isObscure;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.p16, vertical: AppPadding.p8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelName,
            style: TextStyle(
                fontSize: FontSizeManager.f14,
                fontWeight: FontWeightManager.reguler,
                color: ColorManager.tertiary),
          ),
          TextField(
            autofocus: false,
            controller: controller,
            // obscureText: isObscure,
            style: getWhiteTextStyle(),
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: ColorManager.grey60)
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: ColorManager.tertiary)
              ),
              hintText: hintext,
              hintStyle: TextStyle(
                fontSize: FontSizeManager.f14,
                fontWeight: FontWeightManager.reguler,
                color: ColorManager.grey60),
            ),
          ),
          // const SizedBox(
          //   height: AppSize.s16,
          // ),
        ],
      ),
    );
  }
}
