import 'package:e_commerce_app/utils/theme/custom%20themes/appbar_theme.dart';
import 'package:e_commerce_app/utils/theme/custom%20themes/bottom_sheet_theme.dart';
import 'package:e_commerce_app/utils/theme/custom%20themes/checkbox_theme.dart';
import 'package:e_commerce_app/utils/theme/custom%20themes/chip_theme.dart';
import 'package:e_commerce_app/utils/theme/custom%20themes/elevated_button_theme.dart';
import 'package:e_commerce_app/utils/theme/custom%20themes/outlined_button_theme.dart';
import 'package:e_commerce_app/utils/theme/custom%20themes/text_field_theme.dart';
import 'package:e_commerce_app/utils/theme/custom%20themes/text_themes.dart';
import 'package:flutter/material.dart';




class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(

    useMaterial3: true,
    fontFamily: 'poopins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: AppTextTheme.lightTextTheme,
    chipTheme: AppChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    checkboxTheme: AppCheckBoxTheme.lightCheckBoxTheme,
    bottomSheetTheme: AppBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: AppTextFormField.lightInputDecorationTheme





  );

  static ThemeData darkTheme = ThemeData(

    useMaterial3: true,
    fontFamily: 'poopins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    textTheme: AppTextTheme.darkTextTheme,
    chipTheme: AppChipTheme.darkChipTheme,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: TAppBarTheme.DarkAppBarTheme,
    checkboxTheme: AppCheckBoxTheme.darkCheckBoxTheme,
    bottomSheetTheme: AppBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: AppTextFormField.darkInputDecorationTheme





  );
}