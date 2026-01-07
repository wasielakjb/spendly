import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:spendly/screens/home/widgets/budget_summary_wgt.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          BudgetSummaryWidget(),
          SizedBox(height: 20),
          
        ],
      ),
    );
  }
}
