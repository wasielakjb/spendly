import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:spendly/app/router/app_router.gr.dart';
import 'package:spendly/di.dart';
import 'package:spendly/screens/analytics/routing/analytics_routes.dart';
import 'package:spendly/screens/dashboard/routing/dashboard_routes.dart';
import 'package:spendly/screens/expenses/routing/expenses_routes.dart';
import 'package:spendly/screens/settings/routing/settings_routes.dart';

@singleton
@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          page: AppViewRoute.page,
          initial: true,
          children: [
            ...inject<DashboardRoutes>().routes,
            ...inject<ExpensesRoutes>().routes,
            ...inject<AnalyticsRoutes>().routes,
            ...inject<SettingsRoutes>().routes,
          ],
        ),
      ];
}
