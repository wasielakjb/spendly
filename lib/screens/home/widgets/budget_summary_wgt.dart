import 'package:flutter/material.dart';
import 'package:spendly/extensions/color_scheme_extension.dart';
import 'package:spendly/extensions/text_theme_extension.dart';

class BudgetSummaryWidget extends StatelessWidget {
  const BudgetSummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60),
      child: Column(
        spacing: 20,
        children: [
          Text(
            r'$1235.00',
            style: context.headlineLarge.copyWith(fontSize: 40),
          ),
          Text(
            'This month expenses',
            style: context.bodySmall,
          ),
          FilledButton.tonal(
            onPressed: () {},
            child: Text(
              'See your budget',
              style: context.labelMedium,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              spacing: 8,
              children: [
                Expanded(
                  child: _MonthSummaryWidget(
                    title: 'Total',
                    value: '12',
                    color: context.primary,
                  ),
                ),
                const Expanded(
                  child: _MonthSummaryWidget(
                    title: 'Higest',
                    value: r'$19.99',
                    color: Colors.redAccent,
                  ),
                ),
                const Expanded(
                  child: _MonthSummaryWidget(
                    title: 'Lowest',
                    value: r'$5.99',
                    color: Colors.greenAccent,
                  ),
                ),
              ],
            ),
          ),
      
        ],
      ),
    );
  }
}

class _MonthSummaryWidget extends StatelessWidget {
  const _MonthSummaryWidget({
    required this.title,
    required this.value,
    required this.color,
  });

  final String title;
  final String value;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 12),
          decoration: BoxDecoration(
            border: Border.all(color: context.outlineVariant),
            borderRadius: BorderRadius.circular(16),
            color: context.surfaceContainerLow,
          ),
          child: Column(
            spacing: 2,
            children: [
              Text(title, style: context.labelMedium),
              Text(value, style: context.bodyMediumBold),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Container(
            width: double.infinity / 3,
            height: 1,
            color: color,
          ),
        ),
      ],
    );
  }
}
