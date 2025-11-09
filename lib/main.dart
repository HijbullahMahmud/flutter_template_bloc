import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_template/presentation/core/router/app_router.dart';
import 'package:flutter_bloc_template/presentation/core/theme/theme.dart';

import 'core/di/dependency_injection.dart';
import 'presentation/core/app_state/theme_state/domain/entities/app_theme.dart';
import 'presentation/core/app_state/theme_state/presentation/bloc/theme_cubit.dart';
import 'presentation/core/app_state/theme_state/presentation/bloc/theme_state.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initDependencies();
  initDataSource();
  initRepositories();
  initUseCases();
  initBlocs();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final router = injector<AppRouter>().router;

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => injector<ThemeCubit>()..loadTheme()),
      ],
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          ThemeMode mode;
          switch (state.appTheme) {
            case AppTheme.light:
              mode = ThemeMode.light;
              break;
            case AppTheme.dark:
              mode = ThemeMode.dark;
              break;
            default:
              mode = ThemeMode.system;
          }

          return MaterialApp.router(
            title: 'Flutter Demo',
            theme: context.lightTheme,
            darkTheme: context.darkTheme,
            themeMode: mode,
            routerConfig: router,
          );
        },
      ),
    );
  }
}
