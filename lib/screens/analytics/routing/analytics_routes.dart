import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:spendly/app/router/app_router.gr.dart';

@singleton
class AnalyticsRoutes {
  List<AutoRoute> get routes => [
        CustomRoute<void>(
          path: 'analytics',
          page: AnalyticsRoute.page,
          transitionsBuilder: TransitionsBuilders.noTransition,
        ),
      ];
}
