import 'package:flutter/material.dart';
import 'package:dana_abadi_app/src/theme_manager/color_manager.dart';
import 'package:dana_abadi_app/src/theme_manager/font_manager.dart';

ThemeData getApplicationThemeData() {
  return ThemeData(
    scaffoldBackgroundColor: ColorManager.primary,
    appBarTheme: AppBarTheme(
      backgroundColor: ColorManager.primary,
      foregroundColor: ColorManager.tertiary,
      elevation: 0,
    ),
    fontFamily: FontFamilyConstant.fontFamily,
  );
}

