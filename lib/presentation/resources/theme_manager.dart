import 'package:advanced_flutter/presentation/resources/color_manager.dart';
import 'package:advanced_flutter/presentation/resources/font_manager.dart';
import 'package:advanced_flutter/presentation/resources/style_manager.dart';
import 'package:advanced_flutter/presentation/resources/value_manager.dart';
import 'package:flutter/material.dart';
import 'package:advanced_flutter/presentation/resources/style_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    // main colors of the app
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.primaryOpacity70,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.grey1,

    // card view theme
    cardTheme: CardTheme(
      color: ColorManager.white,
      shadowColor: ColorManager.grey,
      elevation: AppSize.s12,
    ),

    // App bar theme

    // Button theme
    buttonTheme: ButtonThemeData(
      shape: StadiumBorder(),
      disabledColor: ColorManager.grey1,
      buttonColor: ColorManager.primary,
      splashColor: ColorManager.primaryOpacity70,
    ),

    //elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: StyleManager.getRegularStyle(color: ColorManager.white),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s12),
        ),
      ),
    ),

    // Text theme
    textTheme: TextTheme(
      headlineLarge: StyleManager.getSemiBoldStyle(
        color: ColorManager.darkGrey,
        fontSize: FontSize.s16,
      ),
      titleMedium: StyleManager.getMediumStyle(
        color: ColorManager.lightGery,
        fontSize: FontSize.s14,
      ),
      bodySmall: StyleManager.getRegularStyle(
        color: ColorManager.grey1,
      ),
      bodyLarge: StyleManager.getRegularStyle(
        color: ColorManager.grey,
      ),
    ),

    // input decoration theme
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.all(AppPadding.p8),

      // hint text style
      hintStyle: StyleManager.getRegularStyle(color: ColorManager.grey1),

      // error style
      errorStyle: StyleManager.getRegularStyle(color: ColorManager.error),

      // label style
      labelStyle: StyleManager.getMediumStyle(color: ColorManager.darkGrey),

      // enabled border
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.grey, width: AppSize.s1_5),
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))
      ),

      // focused border
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))
      ),

      // error border
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.error, width: AppSize.s1_5),
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))
      ),

      // focused error border
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))
      )
    ),
  );
}
