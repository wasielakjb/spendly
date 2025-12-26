import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:spendly/app/router/app_router.gr.dart';

@singleton
class SettingsRoutes {
  List<AutoRoute> get routes => [
        CustomRoute<void>(
          path: 'settings',
          page: SettingsRoute.page,
          transitionsBuilder: TransitionsBuilders.noTransition,
        ),
      ];
}
