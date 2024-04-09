import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dana_abadi_app/src/theme_manager/color_manager.dart';
import 'package:dana_abadi_app/src/theme_manager/font_manager.dart';

TextStyle _getTextStyle(
  double fontSize,
  String fontFamily,
  FontWeight fontWeight,
  Color color,
){
  return GoogleFonts.inter().copyWith(
    fontSize: fontSize,
    fontFamily: fontFamily,
    fontWeight: fontWeight,
    color: color,
  );
}

TextStyle getWhiteTextStyle({
  double fontSize = FontSizeManager.f16,
  FontWeight fontWeight = FontWeight.normal,
}) {
  return _getTextStyle(
    fontSize,
    FontFamilyConstant.fontFamily, 
    fontWeight, 
    ColorManager.tertiary
    );
}
TextStyle getBlack60TextStyle({
  double fontSize = FontSizeManager.f16,
  FontWeight fontWeight = FontWeight.normal,
}) {
  return _getTextStyle(
    fontSize,
    FontFamilyConstant.fontFamily, 
    fontWeight, 
    ColorManager.black60
    );
}
TextStyle getBlack30TextStyle({
  double fontSize = FontSizeManager.f16,
  FontWeight fontWeight = FontWeight.normal,
}) {
  return _getTextStyle(
    fontSize,
    FontFamilyConstant.fontFamily, 
    fontWeight, 
    ColorManager.black30
    );
}
TextStyle getBlackTextStyle({
  double fontSize = FontSizeManager.f16,
  FontWeight fontWeight = FontWeight.normal,
}) {
  return _getTextStyle(
    fontSize,
    FontFamilyConstant.fontFamily, 
    fontWeight, 
    ColorManager.black
    );
}
