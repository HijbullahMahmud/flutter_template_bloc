import 'package:equatable/equatable.dart';
import 'package:flutter_bloc_template/presentation/core/app_state/theme_state/domain/entities/app_theme.dart';

class ThemeState extends Equatable {
  final AppTheme appTheme;

  const ThemeState(this.appTheme);

  @override
  List<Object?> get props => [appTheme];
}

extension ThemeStateX on ThemeState {
  bool get isDarkMode => appTheme == AppTheme.dark;
}
