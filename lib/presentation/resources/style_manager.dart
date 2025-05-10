import 'package:advanced_flutter/presentation/resources/font_manager.dart';
import 'package:flutter/material.dart';

class StyleManager {
  static TextStyle _getTextStyle(
      double fontsSize, String fontFamily, FontWeight fontWeight, Color color) {
    return TextStyle(
      fontSize: fontsSize,
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: color,
    );
  }

  // regular font Style
  static TextStyle getRegularStyle({double fontSize = 12, required Color color}) {
    return _getTextStyle(
        fontSize, FontConstants.fontFamily, FontWeightManager.regular, color);
  }

  // light font style
  static TextStyle getLightStyle({double fontSize = 12, required Color color}) {
    return _getTextStyle(
        fontSize, FontConstants.fontFamily, FontWeightManager.light, color);
  }

  // bold font style
  static TextStyle getBoldStyle({double fontSize = 12, required Color color}) {
    return _getTextStyle(
        fontSize, FontConstants.fontFamily, FontWeightManager.bold, color);
  }

  // semiBold font style
  static TextStyle getSemiBoldStyle({double fontSize = 12, required Color color}) {
    return _getTextStyle(
        fontSize, FontConstants.fontFamily, FontWeightManager.semiBold, color);
  }

  // medium font style
  static TextStyle getMediumStyle({double fontSize = 12, required Color color}) {
    return _getTextStyle(
        fontSize, FontConstants.fontFamily, FontWeightManager.medium, color);
  }
}
