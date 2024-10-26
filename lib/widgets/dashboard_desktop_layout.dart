import 'package:flutter/material.dart';

import 'package:responsive_dash_board/widgets/all_expensess_and_quick_voice_section.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/income_section.dart';
import 'package:responsive_dash_board/widgets/my_card_and_transaction_history_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 100,
          child: CustomDrawer(),
        ),
        SizedBox(width: 32),
        Expanded(
          flex: 216 + 167 - 24,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                      flex: 216,
                      child: Padding(
                        padding: EdgeInsets.only(top: 40),
                        child: AllExpensessAndQuickInvoiceSection(),
                      ),
                    ),
                    SizedBox(width: 24),
                    Expanded(
                      flex: 167,
                      child: Column(
                        children: [
                          SizedBox(height: 40),
                          MyCardAndTransactionHistorySection(),
                          SizedBox(height: 24),
                          Expanded(child: IncomeSection()),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
