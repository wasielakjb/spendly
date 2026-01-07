import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:spendly/app/router/app_router.gr.dart';

@singleton
class HomeRoutes {
  List<AutoRoute> get routes => [
        CustomRoute<void>(
          path: 'home',
          page: HomeRoute.page,
          initial: true,
          transitionsBuilder: TransitionsBuilders.noTransition,
        ),
      ];
}
