import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:spendly/app/router/app_router.gr.dart';
import 'package:spendly/extensions/color_scheme_extension.dart';
import 'package:spendly/templates/navigation_bar/app_navigation_bar.dart';

@RoutePage()
class AnalyticsPage extends StatelessWidget {
  const AnalyticsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.surfaceContainer,
      bottomNavigationBar: const AppNavigationBar(current: AnalyticsRoute()),
    );
  }
}
