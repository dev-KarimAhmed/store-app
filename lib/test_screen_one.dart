import 'package:flutter/material.dart';
import 'package:flutter_store_app_with_graphql/core/extensions/context_ext.dart';
import 'package:flutter_store_app_with_graphql/core/language/lang_key.dart';
import 'package:flutter_store_app_with_graphql/core/routes/app_routes.dart';

class TestScreenOne extends StatelessWidget {
  const TestScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(
              context.translate(LangKeys.appName),
              style: TextStyle(fontSize: 40, color: context.color.mainColor),
            ),
            ElevatedButton(
              onPressed: () {
                context.pushNamed(AppRoutes.testScreentwo);
              },
              child: Text(
                'go Screen two',
                style: TextStyle(fontSize: 28, color: context.color.mainColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
