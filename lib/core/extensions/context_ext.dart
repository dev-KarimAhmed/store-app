import 'package:flutter/material.dart';
import 'package:flutter_store_app_with_graphql/core/styles/theme/color_theme.dart';

extension ContextExt on BuildContext {

//color 

MyColors get color => Theme.of(this).extension<MyColors>()!; 

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

  Future<dynamic> pushNamedAndRemoveUntil(String routeName,
      {Object? arguments}) {
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
