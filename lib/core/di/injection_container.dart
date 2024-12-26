import 'package:flutter_store_app_with_graphql/core/app/app_cubit/app_cubit.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;


void setupInjection() {
  _initInjection();
}

void _initInjection() {
   sl.registerFactory(AppCubit.new);
}
