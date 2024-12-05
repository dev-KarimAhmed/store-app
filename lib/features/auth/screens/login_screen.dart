import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_store_app_with_graphql/core/extensions/context_ext.dart';
import 'package:flutter_store_app_with_graphql/features/auth/refactors/auth_custom_painters.dart';
import 'package:flutter_store_app_with_graphql/features/auth/refactors/login_screen_body.dart';
import 'package:flutter_store_app_with_graphql/store.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomPaint(
        size: Size(MediaQuery.of(context).size.width, 150.h),
        painter: AuthCustomPainter(
          gradient: LinearGradient(
            colors: [
              context.color.bluePinkLight!,
              context.color.bluePinkLight!,
            ],
          ),
        ),
      ),
      body: const SafeArea(
        bottom: false,
        child: LoginScreenBody(),
      ),
    );
  }
}
