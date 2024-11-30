import 'package:flutter/material.dart';
import 'package:flutter_store_app_with_graphql/core/app/connectivity_controller.dart';
import 'package:flutter_store_app_with_graphql/core/app/env_variables.dart';
import 'package:flutter_store_app_with_graphql/core/common/screens/no_network_screen.dart';

class StoreQl extends StatelessWidget {
  const StoreQl({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.instance.isConnectedNotifier,
      builder: (_, value, __) {
        if (value) {
          return MaterialApp(
            builder: (context, child) {
              return Scaffold(
                body: Builder(builder: (context) {
                  ConnectivityController.instance.init();
                  return child!;
                },),
              );
            },
            debugShowCheckedModeBanner: EnvVariables.instance.isDev,
            title: 'StoreQl',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            home: const Scaffold(
                body: Center(
              child: Text('First run'),
            ),),
          );
        } else {
          return MaterialApp(
            title: 'No Network',
            debugShowCheckedModeBanner: EnvVariables.instance.isDev,
            home: const NoNetworkScreen(),
          );
        }
      },
    );
  }
}
