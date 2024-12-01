import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_store_app_with_graphql/core/app/connectivity_controller.dart';
import 'package:flutter_store_app_with_graphql/core/app/env_variables.dart';
import 'package:flutter_store_app_with_graphql/core/common/screens/no_network_screen.dart';
import 'package:flutter_store_app_with_graphql/core/styles/fonts/font_family_helper.dart';
import 'package:flutter_store_app_with_graphql/core/styles/fonts/font_weight_helper.dart';

class StoreQl extends StatelessWidget {
  const StoreQl({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.instance.isConnectedNotifier,
      builder: (_, value, __) {
        if (value) {
          return ScreenUtilInit(
            designSize: const Size(375, 812),
            minTextAdapt: true,
            child: MaterialApp(
              builder: (context, child) {
                return Scaffold(
                  body: Builder(
                    builder: (context) {
                      ConnectivityController.instance.init();
                      return child!;
                    },
                  ),
                );
              },
              debugShowCheckedModeBanner: EnvVariables.instance.isDev,
              title: 'StoreQl',
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true,
              ),
              home: Scaffold(
                body: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Old Text',
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeightHelper.bold,
                        ),
                      ),
                      Text(
                        'Englsih Text',
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeightHelper.bold,
                          fontFamily: FontFamilyHelper.englishFont,
                        ),
                      ),
                      Text(
                        'هذا النص بالعربية',
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeightHelper.bold,
                          fontFamily: FontFamilyHelper.arabicFont,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
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
