import 'package:flutter_bloc_template/data/service/cache/cache_service.dart';
import 'package:flutter_bloc_template/data/service/cache/shared_preference_service.dart';
import 'package:flutter_bloc_template/presentation/core/app_state/theme_state/data/datasource/theme_local_datasource.dart';
import 'package:flutter_bloc_template/presentation/core/app_state/theme_state/data/repository/theme_repository_impl.dart';
import 'package:flutter_bloc_template/presentation/core/app_state/theme_state/domain/repository/theme_repository.dart';
import 'package:flutter_bloc_template/presentation/core/app_state/theme_state/domain/use_cases/theme_use_case.dart';
import 'package:flutter_bloc_template/presentation/core/app_state/theme_state/presentation/bloc/theme_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final injector = GetIt.instance;

Future<void> initDependencies() async {
  final sharedPrefs = await SharedPreferences.getInstance();
  injector.registerLazySingleton<CacheService>(
    () => SharedPreferenceService(prefs: sharedPrefs),
  );
}

void initDataSource() {
  injector.registerFactory<ThemeLocalDatasource>(
    () => ThemeLocalDatasourceImpl(cacheService: injector.get<CacheService>()),
  );
}

void initRepositories() {
  injector.registerFactory<ThemeRepository>(
    () => ThemeRepositoryImpl(datasource: injector.get<ThemeLocalDatasource>()),
  );
}

void initUseCases() {
  injector.registerFactory<GetThemeUseCase>(
    () => GetThemeUseCase(repository: injector.get<ThemeRepository>()),
  );
  injector.registerFactory<SetThemeUseCase>(
    () => SetThemeUseCase(repository: injector.get<ThemeRepository>()),
  );
}

void initBlocs() {
  injector.registerFactory<ThemeCubit>(
    () => ThemeCubit(
      getThemeUseCase: injector.get<GetThemeUseCase>(),
      setThemeUseCase: injector.get<SetThemeUseCase>(),
    ),
  );
}
