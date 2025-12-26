import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:spendly/app/router/app_router.gr.dart';

@singleton
class DashboardRoutes {
  List<AutoRoute> get routes => [
        CustomRoute<void>(
          path: 'dashboard',
          page: DashboardRoute.page,
          initial: true,
          transitionsBuilder: TransitionsBuilders.noTransition,
        ),
      ];
}
