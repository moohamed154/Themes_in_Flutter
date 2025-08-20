import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:themes/cache/cache_helper.dart';
import 'package:themes/cache/cache_helper_key.dart';

part 'app_state.dart';

enum ThemeModeState { light, dark, system }

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitialState()) {
    _loadTheme();
  }

  static AppCubit get(context) => BlocProvider.of(context);

  //* Select Theme
  ThemeModeState currentTheme = ThemeModeState.system;

  Future<void> selectTheme(ThemeModeState theme) async {
    currentTheme = theme;
    //* Save Theme To Cache
    await CacheHelper().saveData(
      key: CacheHelperKey.themeMode,
      value: theme.name,
    );

    emit(ThemeChangedState());
  }

  //* Get Theme
  ThemeMode getTheme() {
    switch (currentTheme) {
      case ThemeModeState.light:
        return ThemeMode.light;
      case ThemeModeState.dark:
        return ThemeMode.dark;
      case ThemeModeState.system:
        return ThemeMode.system;
    }
  }

  //* Load Theme From Cache
  Future<void> _loadTheme() async {
    String? savedTheme = await CacheHelper().getData(
      key: CacheHelperKey.themeMode,
    );

    if (savedTheme != null) {
      currentTheme = ThemeModeState.values.firstWhere(
        (element) => element.name == savedTheme,
        orElse: () => ThemeModeState.system,
      );
    }
    emit(ThemeChangedState());
  }
}
