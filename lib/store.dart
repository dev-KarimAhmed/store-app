import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_store_app_with_graphql/core/app/app_cubit/app_cubit.dart';
import 'package:flutter_store_app_with_graphql/core/app/connectivity_controller.dart';
import 'package:flutter_store_app_with_graphql/core/app/env_variables.dart';
import 'package:flutter_store_app_with_graphql/core/common/screens/no_network_screen.dart';
import 'package:flutter_store_app_with_graphql/core/di/injection_container.dart';
import 'package:flutter_store_app_with_graphql/core/language/app_localization_setup.dart';
import 'package:flutter_store_app_with_graphql/core/routes/app_routes.dart';
import 'package:flutter_store_app_with_graphql/core/services/shared_prefs/pref_keys.dart';
import 'package:flutter_store_app_with_graphql/core/services/shared_prefs/shareed_pref.dart';
import 'package:flutter_store_app_with_graphql/core/styles/theme/app_theme.dart';

class StoreQl extends StatelessWidget {
  const StoreQl({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.instance.isConnectedNotifier,
      builder: (_, value, __) {
        if (value) {
          return BlocProvider(
            create: (context) => sl<AppCubit>()
              ..changeThemeMode(
                sharedmode: SharedPref().getBoolean(SharedPrefKeys.mode),
              )
              ..getSavedLanguage(),
            child: BlocBuilder<AppCubit, AppState>(
              buildWhen: (previous, current) => previous != current,
              builder: (context, state) {
                final cubit = context.read<AppCubit>();
                return ScreenUtilInit(
                  designSize: const Size(375, 812),
                  minTextAdapt: true,
                  child: MaterialApp(
                    locale: Locale(cubit.currentLanguage),
                    supportedLocales: AppLocalizationsSetup.supportedLocales,
                    localeResolutionCallback:
                        AppLocalizationsSetup.localeResolutionCallback,
                    localizationsDelegates:
                        AppLocalizationsSetup.localizationsDelegates,
                    builder: (context, child) {
                      return GestureDetector(
                        onTap: () {
                          FocusManager.instance.primaryFocus?.unfocus();
                        },
                        child: Scaffold(
                          body: Builder(
                            builder: (context) {
                              ConnectivityController.instance.init();
                              return child!;
                            },
                          ),
                        ),
                      );
                    },
                    theme: cubit.isDark
                        ? AppTheme.darkTheme()
                        : AppTheme.lighTheme(),
                    debugShowCheckedModeBanner: EnvVariables.instance.isDev,
                    title: 'StoreQl',
                    initialRoute: AppRoutes.loginScreen,
                    onGenerateRoute: AppRoutes.onGenerateRout,
                  ),
                );
              },
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
