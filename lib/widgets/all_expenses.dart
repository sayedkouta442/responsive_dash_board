import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item_list_view.dart';

import 'package:responsive_dash_board/widgets/all_expensess_heaedr.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          AllExpensessHeader(),
          SizedBox(height: 16),
          AllExpensesItemListView(),
        ],
      ),
    );
  }
}
