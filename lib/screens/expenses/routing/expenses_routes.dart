import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:spendly/app/router/app_router.gr.dart';

@singleton
class ExpensesRoutes {
  List<AutoRoute> get routes => [
        CustomRoute<void>(
          path: 'expenses',
          page: ExpensesRoute.page,
          transitionsBuilder: TransitionsBuilders.noTransition,
        ),
      ];
}
