import 'package:flutter_store_app_with_graphql/core/app/app_cubit/app_cubit.dart';
import 'package:flutter_store_app_with_graphql/core/graphql/api_service.dart';
import 'package:flutter_store_app_with_graphql/core/graphql/dio_factory.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void setupInjection() {
  _initInjection();
}

void _initInjection() {
  final dio = DioFactory.getDio();
  sl
    ..registerFactory(AppCubit.new)
    ..registerLazySingleton<ApiService>(() => ApiService(dio));
}
