import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_store_app_with_graphql/core/styles/theme/color_theme.dart';

import 'package:flutter_store_app_with_graphql/core/language/app_localization.dart';

extension ContextExt on BuildContext {
//color
  MyColors get color => Theme.of(this).extension<MyColors>()!;

// Language

  TextStyle get textStyle => Theme.of(this).textTheme.displaySmall!;

  String translate(String langKey) {
    return AppLocalizations.of(this)!.translate(langKey).toString();
  }

  Future<dynamic> pushNamed(String routeName, {Object? arguments}) {
    return Navigator.pushNamed(this, routeName, arguments: arguments);
  }

  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.pushReplacementNamed(
      this,
      routeName,
      arguments: arguments,
    );
  }

  Future<dynamic> pushNamedAndRemoveUntil(
    String routeName, {
    Object? arguments,
  }) {
    return Navigator.pushNamedAndRemoveUntil(
      this,
      routeName,
      (route) => false,
      arguments: arguments,
    );
  }

  void pop() {
    Navigator.of(this).pop();
  }
}
