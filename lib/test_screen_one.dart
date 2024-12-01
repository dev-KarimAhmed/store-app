import 'package:flutter/material.dart';
import 'package:flutter_store_app_with_graphql/core/extensions/context_ext.dart';
import 'package:flutter_store_app_with_graphql/core/routes/app_routes.dart';

class TestScreenOne extends StatelessWidget {
  const TestScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.pushNamed(AppRoutes.testScreentwo);
          },
          child: Text(
            'go Screen two',
            style: TextStyle(fontSize: 28, color: context.color.mainColor),
          ),
        ),
      ),
    );
  }
}
