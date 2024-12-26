import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_store_app_with_graphql/core/app/bloc_observer.dart';
import 'package:flutter_store_app_with_graphql/core/app/env_variables.dart';
import 'package:flutter_store_app_with_graphql/core/di/injection_container.dart';
import 'package:flutter_store_app_with_graphql/core/services/shared_prefs/shareed_pref.dart';
import 'package:flutter_store_app_with_graphql/firebase_options.dart';
import 'package:flutter_store_app_with_graphql/store.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EnvVariables.instance.init(environment: EnvironmentEnum.dev);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await SharedPref().instantiatePreferences();
  Bloc.observer = AppBlocObserver();
  setupInjection();
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  ).then(
    (_) => runApp(const StoreQl()),
  );
}
