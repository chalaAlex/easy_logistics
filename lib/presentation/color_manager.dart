import 'package:flutter/material.dart';

class ColorManager {
  static Color primary = HexColor.fromhex("#ED9728");
  static Color darkGrey = HexColor.fromhex("#525252");
  static Color grey = HexColor.fromhex("#ED737477");
  static Color lightGery = HexColor.fromhex("#9E9E9E");
  static Color primaryOpacity70 = HexColor.fromhex("#B3ED9728");
  static Color darkPrimary = HexColor.fromhex("#d17d11");
  static Color grey1 = HexColor.fromhex("#707070");
  static Color grey2 = HexColor.fromhex("#797979");
  static Color white = HexColor.fromhex("#FFFFFF");
  static Color error = HexColor.fromhex("#e61f34");
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
