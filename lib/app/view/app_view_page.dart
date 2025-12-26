import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spendly/app/cubit/app_locale_cubit.dart';
import 'package:spendly/app/cubit/app_theme_cubit.dart';
import 'package:spendly/app/router/app_router.dart';
import 'package:spendly/app/theme/app_theme.dart';
import 'package:spendly/di.dart';

class App extends StatelessWidget {
  App({super.key});

  final router = inject<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => inject<AppThemeCubit>()),
        BlocProvider(create: (_) => inject<AppLocaleCubit>()),
      ],
      child: BlocBuilder<AppThemeCubit, ThemeMode>(
        builder: (context, themeMode) => BlocBuilder<AppLocaleCubit, Locale>(
          builder: (context, locale) => MaterialApp.router(
            debugShowCheckedModeBanner: false,
            theme: AppTheme.light,
            darkTheme: AppTheme.dark,
            themeMode: themeMode,
            locale: locale,
            routerConfig: router.config(
              navigatorObservers: () => [AutoRouteObserver()],
            ),
          ),
        ),
      ),
    );
  }
}

@RoutePage()
class AppViewPage extends StatelessWidget {
  const AppViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}
