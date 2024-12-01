import 'package:flutter/material.dart';
import 'package:flutter_store_app_with_graphql/core/styles/colors/dark_colors.dart';
import 'package:flutter_store_app_with_graphql/core/styles/colors/ligh_colors.dart';

class MyColors extends ThemeExtension<MyColors> {
 const MyColors({required this.mainColor});

  final Color? mainColor;
  @override
  ThemeExtension<MyColors> copyWith({Color? mainColor}) {
    return MyColors(mainColor: mainColor);
  }

  @override
  ThemeExtension<MyColors> lerp(
      covariant ThemeExtension<MyColors>? other, double t,) {
    if (other! is MyColors) {
      return this;
    }

    return MyColors(mainColor: mainColor);
  }

  static const MyColors dark = MyColors(mainColor: DarkColors.mainColor);
  static const MyColors light = MyColors(mainColor: LighColors.mainColor);
}
