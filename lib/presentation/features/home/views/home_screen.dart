import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_theme_management/presentation/core/app_state/theme_state/domain/entities/app_theme.dart';
import 'package:flutter_bloc_theme_management/presentation/core/app_state/theme_state/presentation/bloc/theme_cubit.dart';
import 'package:flutter_bloc_theme_management/presentation/core/app_state/theme_state/presentation/bloc/theme_state.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Theme management with bloc")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            spacing: 16,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FilledButton(
                onPressed: () =>
                    context.read<ThemeCubit>().changeTheme(AppTheme.light),
                child: Text("Light Theme"),
              ),
              FilledButton(
                onPressed: () =>
                    context.read<ThemeCubit>().changeTheme(AppTheme.dark),
                child: Text("Dark Theme"),
              ),
              FilledButton(
                onPressed: () =>
                    context.read<ThemeCubit>().changeTheme(AppTheme.system),
                child: Text("System Theme"),
              ),

              BlocBuilder<ThemeCubit, ThemeState>(
                buildWhen: (previous, current) =>
                    previous.appTheme != current.appTheme,
                builder: (context, state) {
                  final brightnss = MediaQuery.of(context).platformBrightness;
                  final isDark = state.appTheme == AppTheme.system
                      ? brightnss == Brightness.dark
                      : state.appTheme == AppTheme.dark;

                  return SwitchListTile(
                    title: Text("Dark Theme"),
                    value: isDark,
                    onChanged: (value) {
                      final newTheme = value ? AppTheme.dark : AppTheme.light;
                      context.read<ThemeCubit>().changeTheme(newTheme);
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
