// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:spendly/app/view/app_view_page.dart' as _i2;
import 'package:spendly/screens/analytics/view/analytics_page.dart' as _i1;
import 'package:spendly/screens/dashboard/view/dashboard_page.dart' as _i3;
import 'package:spendly/screens/expenses/view/expenses_page.dart' as _i4;
import 'package:spendly/screens/settings/view/settings_page.dart' as _i5;

/// generated route for
/// [_i1.AnalyticsPage]
class AnalyticsRoute extends _i6.PageRouteInfo<void> {
  const AnalyticsRoute({List<_i6.PageRouteInfo>? children})
    : super(AnalyticsRoute.name, initialChildren: children);

  static const String name = 'AnalyticsRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i1.AnalyticsPage();
    },
  );
}

/// generated route for
/// [_i2.AppViewPage]
class AppViewRoute extends _i6.PageRouteInfo<void> {
  const AppViewRoute({List<_i6.PageRouteInfo>? children})
    : super(AppViewRoute.name, initialChildren: children);

  static const String name = 'AppViewRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i2.AppViewPage();
    },
  );
}

/// generated route for
/// [_i3.DashboardPage]
class DashboardRoute extends _i6.PageRouteInfo<void> {
  const DashboardRoute({List<_i6.PageRouteInfo>? children})
    : super(DashboardRoute.name, initialChildren: children);

  static const String name = 'DashboardRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i3.DashboardPage();
    },
  );
}

/// generated route for
/// [_i4.ExpensesPage]
class ExpensesRoute extends _i6.PageRouteInfo<void> {
  const ExpensesRoute({List<_i6.PageRouteInfo>? children})
    : super(ExpensesRoute.name, initialChildren: children);

  static const String name = 'ExpensesRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i4.ExpensesPage();
    },
  );
}

/// generated route for
/// [_i5.SettingsPage]
class SettingsRoute extends _i6.PageRouteInfo<void> {
  const SettingsRoute({List<_i6.PageRouteInfo>? children})
    : super(SettingsRoute.name, initialChildren: children);

  static const String name = 'SettingsRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i5.SettingsPage();
    },
  );
}
