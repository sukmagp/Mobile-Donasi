import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:dana_abadi_app/src/theme_manager/color_manager.dart';
import 'package:dana_abadi_app/src/theme_manager/font_manager.dart';
import 'package:dana_abadi_app/src/theme_manager/style_manager.dart';
import 'package:dana_abadi_app/src/theme_manager/value_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
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
                color: ColorManager.black30),
          ),
          const SizedBox(
            height: AppSize.s8,
          ),
          TextField(
            // inputFormatters: <TextInputFormatter>[
            //   CurrencyTextInputFormatter(
            //     locale: 'ID',
            //     decimalDigits: 0,
            //     symbol: 'Rp. ',
            //   ),
            // ],
            controller: controller,
            obscureText: isObscure,
            style: getBlackTextStyle(),
            decoration: InputDecoration(
              // focusedBorder: UnderlineInputBorder(
              //   borderSide: BorderSide(color: ColorManager.secondary)
              // ),
              contentPadding: const EdgeInsets.symmetric(
                vertical: AppPadding.p12,
                horizontal: AppPadding.p30,
              ),
              filled: true,
              fillColor: ColorManager.tertiary,
              hintText: hintext,
              hintStyle: TextStyle(
                fontSize: FontSizeManager.f14,
                fontWeight: FontWeightManager.reguler,
                color: ColorManager.black30),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: ColorManager.secondary),
                borderRadius: BorderRadius.circular(AppSize.s24),
              ),
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
