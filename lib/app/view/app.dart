import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:spendly/app/router/app_router.dart';
import 'package:spendly/di.dart';

class App extends StatelessWidget {
  App({super.key});

  final router = inject<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router.config(
        navigatorObservers: () => [AutoRouteObserver()],
      ),
    );
  }
}

@RoutePage()
class AppViewPage extends StatelessWidget {
  const AppViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
