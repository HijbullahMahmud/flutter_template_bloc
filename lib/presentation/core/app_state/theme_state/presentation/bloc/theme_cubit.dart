import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_theme_management/presentation/core/app_state/theme_state/domain/entities/app_theme.dart';
import 'package:flutter_bloc_theme_management/presentation/core/app_state/theme_state/domain/use_cases/theme_use_case.dart';
import 'package:flutter_bloc_theme_management/presentation/core/app_state/theme_state/presentation/bloc/theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  final GetThemeUseCase getThemeUseCase;
  final SetThemeUseCase setThemeUseCase;

  ThemeCubit({required this.getThemeUseCase, required this.setThemeUseCase})
    : super(ThemeState(AppTheme.system));

  Future<void> loadTheme() async {
    final theme = await getThemeUseCase();
    emit(ThemeState(theme));
  }

  Future<void> changeTheme(AppTheme theme) async {
    await setThemeUseCase(theme);
    emit(ThemeState(theme));
  }

  ThemeMode get currentThemeMode {
    switch (state.appTheme) {
      case AppTheme.dark:
        return ThemeMode.dark;
      case AppTheme.light:
        return ThemeMode.light;
      case AppTheme.system:
        return ThemeMode.system;
    }
  }
}
