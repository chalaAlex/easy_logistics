import 'package:flutter/material.dart';

class ColorManager {
  static Color primary = HexColor.fromhex("#ED9728");
  static Color darkGrey = HexColor.fromhex("#525252");
  static Color grey = HexColor.fromhex("#ED737477");
  static Color lightGery = HexColor.fromhex("#9E9E9E");
}

extension HexColor on Color {
  static Color fromhex(String hexColorString) {
    hexColorString = hexColorString.replaceAll("#", "");
    if (hexColorString.length == 6) {
      hexColorString = "FF" + hexColorString;
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}
