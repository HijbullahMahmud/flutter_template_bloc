import 'package:flutter_bloc_template/presentation/core/app_state/theme_state/data/datasource/theme_local_datasource.dart';
import 'package:flutter_bloc_template/presentation/core/app_state/theme_state/domain/entities/app_theme.dart';
import 'package:flutter_bloc_template/presentation/core/app_state/theme_state/domain/repository/theme_repository.dart';

class ThemeRepositoryImpl extends ThemeRepository {
  final ThemeLocalDatasource datasource;

  ThemeRepositoryImpl({required this.datasource});

  @override
  Future<AppTheme> getTheme() => datasource.getCachedTheme();

  @override
  Future<void> setTheme(AppTheme theme) => datasource.cacheTheme(theme);
}
