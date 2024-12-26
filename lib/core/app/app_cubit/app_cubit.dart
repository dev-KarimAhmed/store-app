import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_store_app_with_graphql/core/services/shared_prefs/pref_keys.dart';
import 'package:flutter_store_app_with_graphql/core/services/shared_prefs/shareed_pref.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.dart';
part 'app_cubit.freezed.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(const AppState.initial());

  bool isDark = true;
  Future<void> changeThemeMode({bool? sharedmode}) async {
    if (sharedmode != null) {
      isDark = sharedmode;
      emit(AppState.themeChangeMode(isDark: isDark));
    } else {
      isDark = !isDark;
      await SharedPref().setBoolean(SharedPrefKeys.mode, isDark);
      emit(AppState.themeChangeMode(isDark: isDark));
    }
  }
}
