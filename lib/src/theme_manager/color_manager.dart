import 'package:flutter/material.dart'; 

class ColorManager {
  static Color primary = HexColor.fromHex('#F15A23');
  static Color secondary = HexColor.fromHex('#005E6A');
  static Color tertiary = HexColor.fromHex('#FFFFFF');
  static Color black30 = HexColor.fromHex('#8D93A8');
  static Color black60 = HexColor.fromHex('#737D9C');
  static Color black = HexColor.fromHex('#000000');
  static Color grey60 = HexColor.fromHex('#A9A9AC');
  static Color grey = HexColor.fromHex('#D9D9D9');
}


extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if(
      hexColorString.length == 6 
    ){
      hexColorString = 'FF$hexColorString';
    }

    return Color(int.parse(hexColorString, radix: 16));
  }
}
