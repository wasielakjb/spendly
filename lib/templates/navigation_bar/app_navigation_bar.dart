import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:spendly/app/router/app_router.gr.dart';

class AppNavigationBar extends StatelessWidget {
  const AppNavigationBar({
    required this.current,
    super.key,
  });

  final PageRouteInfo<dynamic> current;

  List<PageRouteInfo<dynamic>> get _routes => const [
        HomeRoute(),
        ExpensesRoute(),
        AnalyticsRoute(),
        SettingsRoute(),
      ];

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: _routes.indexOf(current),
      onDestinationSelected: (index) => context.router.pushAndPopUntil(
        _routes[index],
        predicate: (route) => route.data?.name == SettingsRoute.name,
      ),
      destinations: const [
        NavigationDestination(
          icon: Icon(Iconsax.home_outline),
          selectedIcon: Icon(Iconsax.home_1_bold),
          label: 'Home',
        ),
        NavigationDestination(
          icon: Icon(Iconsax.wallet_2_outline),
          selectedIcon: Icon(Iconsax.wallet_2_bold),
          label: 'Expenses',
        ),
        NavigationDestination(
          icon: Icon(Iconsax.chart_outline),
          selectedIcon: Icon(Iconsax.chart_2_bold),
          label: 'Analytics',
        ),
        NavigationDestination(
          icon: Icon(Iconsax.setting_outline),
          selectedIcon: Icon(Iconsax.setting_bold),
          label: 'Settings',
        ),
      ],
    );
  }
}
