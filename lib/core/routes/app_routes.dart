import 'package:flutter/material.dart';
import 'package:flutter_store_app_with_graphql/core/common/screens/under_builder_screen.dart';
import 'package:flutter_store_app_with_graphql/core/routes/base_routes.dart';
import 'package:flutter_store_app_with_graphql/test_screen_one.dart';
import 'package:flutter_store_app_with_graphql/test_screen_two.dart';

class AppRoutes {
  static const String testScreenOne = 'testScreenOne';
  static const String testScreentwo = 'testScreenTwo';

  static Route<void> onGenerateRout(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case testScreenOne:
        return BaseRoute(page: const TestScreenOne());
      case testScreentwo:
        return BaseRoute(page: const TestScreenTwo());
      default:
        return BaseRoute(page: const UnderBuilderScreen());
    }
  }
}
