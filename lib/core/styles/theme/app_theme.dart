import 'package:flutter/material.dart';
import 'package:flutter_store_app_with_graphql/core/styles/colors/dark_colors.dart';
import 'package:flutter_store_app_with_graphql/core/styles/colors/ligh_colors.dart';
import 'package:flutter_store_app_with_graphql/core/styles/theme/color_theme.dart';

class AppTheme {
  static ThemeData lighTheme() {
    return ThemeData(
      extensions: const <ThemeExtension<dynamic>>[MyColors.dark],
      scaffoldBackgroundColor: LighColors.mainColor,
      useMaterial3: true,
    );
  }

  static ThemeData darkTheme() {
    return ThemeData(
      extensions: const <ThemeExtension<dynamic>>[MyColors.light],
      scaffoldBackgroundColor: DarkColors.mainColor,
      useMaterial3: true,
    );
  }
}
