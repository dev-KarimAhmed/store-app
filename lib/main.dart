import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_store_app_with_graphql/core/app/bloc_observer.dart';
import 'package:flutter_store_app_with_graphql/core/app/env_variables.dart';
import 'package:flutter_store_app_with_graphql/firebase_options.dart';
import 'package:flutter_store_app_with_graphql/store.dart';
 
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EnvVariables.instance.init(environment: EnvironmentEnum.dev);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Bloc.observer = AppBlocObserver();
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  ).then(
    (_) => runApp(const StoreQl()),
  );
}
