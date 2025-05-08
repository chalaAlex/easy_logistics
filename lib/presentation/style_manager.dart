import 'package:advanced_flutter/presentation/font_manager.dart';
import 'package:flutter/material.dart';

class StyleManager {
  TextStyle _getTextStyle(
      double fontsSize, String fontFamily, FontWeight fontWeight, Color color) {
    return TextStyle(
      fontSize: fontsSize,
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: color,
    );
  }

  // regular font Style
  TextStyle getRegularStyle({double fontSize = 12, required Color color}) {
    return _getTextStyle(
        fontSize, FontConstants.fontFamily, FontWeightManager.regular, color);
  }

  // light font style
  TextStyle getLightStyle({double fontSize = 12, required Color color}) {
    return _getTextStyle(
        fontSize, FontConstants.fontFamily, FontWeightManager.light, color);
  }

  // bold font style
  TextStyle getBoldStyle({double fontSize = 12, required Color color}) {
    return _getTextStyle(
        fontSize, FontConstants.fontFamily, FontWeightManager.bold, color);
  }

  // semiBold font style
  TextStyle getSemibOLDtStyle({double fontSize = 12, required Color color}) {
    return _getTextStyle(
        fontSize, FontConstants.fontFamily, FontWeightManager.semiBold, color);
  }

  // medium font style
  TextStyle getMediumStyle({double fontSize = 12, required Color color}) {
    return _getTextStyle(
        fontSize, FontConstants.fontFamily, FontWeightManager.medium, color);
  }
}
