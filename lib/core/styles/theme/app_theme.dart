import 'package:flutter/material.dart';
import 'package:flutter_store_app_with_graphql/core/styles/colors/dark_colors.dart';
import 'package:flutter_store_app_with_graphql/core/styles/colors/ligh_colors.dart';
import 'package:flutter_store_app_with_graphql/core/styles/fonts/font_family_helper.dart';
import 'package:flutter_store_app_with_graphql/core/styles/theme/color_theme.dart';

class AppTheme {
  static ThemeData lighTheme() {
    return ThemeData(
      extensions: const <ThemeExtension<dynamic>>[MyColors.light],
      scaffoldBackgroundColor: LighColors.mainColor,
      useMaterial3: true,
      textTheme: TextTheme(
        displaySmall: TextStyle(
          color: DarkColors.white,
          fontSize: 14,
          fontFamily: FontFamilyHelper.getFontFamily(),
        ),
      ),
    );
  }

  static ThemeData darkTheme() {
    return ThemeData(
      extensions: const <ThemeExtension<dynamic>>[MyColors.dark],
      scaffoldBackgroundColor: DarkColors.mainColor,
      useMaterial3: true,
      textTheme: TextTheme(
        displaySmall: TextStyle(
          color: LighColors.white,
          fontSize: 14,
          fontFamily: FontFamilyHelper.getFontFamily(),
        ),
      ),
    );
  }
}
