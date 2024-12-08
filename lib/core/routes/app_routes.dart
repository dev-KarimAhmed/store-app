import 'package:flutter/material.dart';
import 'package:flutter_store_app_with_graphql/core/common/screens/under_builder_screen.dart';
import 'package:flutter_store_app_with_graphql/core/routes/base_routes.dart';
import 'package:flutter_store_app_with_graphql/features/auth/screens/login_screen.dart';
import 'package:flutter_store_app_with_graphql/features/auth/screens/sign_up_screen.dart';


class AppRoutes {
  static const String loginScreen = 'login';
  static const String signupScreen = 'signup';


  static Route<void> onGenerateRout(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case loginScreen:
        return BaseRoute(page: const LoginScreen());
      case signupScreen:
        return BaseRoute(page: const SignUpScreen());
      default:
        return BaseRoute(page: const UnderBuilderScreen());
    }
  }
}
