import 'package:flutter/material.dart';

import 'package:responsive_dash_board/widgets/all_expensess_and_quick_voice_section.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 2,
          child: SingleChildScrollView(
            child: AllExpensessAndQuickInvoiceSection(),
          ),
        ),
      ],
    );
  }
}
