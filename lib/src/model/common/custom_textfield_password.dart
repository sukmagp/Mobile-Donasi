import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:dana_abadi_app/src/theme_manager/color_manager.dart';
import 'package:dana_abadi_app/src/theme_manager/font_manager.dart';
import 'package:dana_abadi_app/src/theme_manager/style_manager.dart';
import 'package:dana_abadi_app/src/theme_manager/value_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFieldPassword extends StatefulWidget {
  const CustomTextFieldPassword({
    super.key,
    required this.labelName,
    required this.hintext,
    required this.controller,
    this.isObscure = false,
  });

  final String labelName;
  final String hintext;
  final bool isObscure;
  final TextEditingController controller;

  @override
  State<CustomTextFieldPassword> createState() => _CustomTextFieldPasswordState();
}

class _CustomTextFieldPasswordState extends State<CustomTextFieldPassword> {
  bool passwordVisible=false;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.p16, vertical: AppPadding.p8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.labelName,
            style: TextStyle(
                fontSize: FontSizeManager.f14,
                fontWeight: FontWeightManager.reguler,
                color: ColorManager.tertiary),
          ),
          TextField(
            autofocus: false,
            controller: widget.controller,
            obscureText: passwordVisible,
            style: getWhiteTextStyle(),
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: ColorManager.grey60)
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: ColorManager.tertiary)
              ),
              hintText: widget.hintext,
              hintStyle: TextStyle(
                fontSize: FontSizeManager.f14,
                fontWeight: FontWeightManager.reguler,
                color: ColorManager.grey60),
                suffixIcon: IconButton(
                     icon: Icon(passwordVisible
                         ? Icons.visibility
                         : Icons.visibility_off),
                     onPressed: () {
                       setState(
                         () {
                           passwordVisible = !passwordVisible;
                         },
                       );
                     },
                     color: ColorManager.grey60,
                   ),
                   alignLabelWithHint: false,
                  //  filled: true,
                 ),
                 keyboardType: TextInputType.visiblePassword,
                 textInputAction: TextInputAction.done,
            ),
          // const SizedBox(
          //   height: AppSize.s16,
          // ),
        ]
      ),
    );
  }
}
