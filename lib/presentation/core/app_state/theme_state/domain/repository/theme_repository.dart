import 'package:flutter_bloc_template/presentation/core/app_state/theme_state/domain/entities/app_theme.dart';

abstract class ThemeRepository {
  Future<void> setTheme(AppTheme theme);
  Future<AppTheme> getTheme();
}
