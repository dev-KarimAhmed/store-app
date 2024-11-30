import 'package:flutter/material.dart';
import 'package:flutter_store_app_with_graphql/core/app/env_variables.dart';

class StoreQl extends StatelessWidget {
  const StoreQl({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: EnvVariables.instance.isDev,
      title: 'StoreQl',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
          body: Center(
        child: Text('First run'),
      )),
    );
  }
}