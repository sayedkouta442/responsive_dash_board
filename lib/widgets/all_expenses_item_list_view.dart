import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expensess_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/all_expensess_item.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

final items = [
  const AllExpensessItemModel(
      image: Assets.imagesBalance,
      title: 'Balance',
      date: 'Apri 2022',
      price: '\$20,129'),
  const AllExpensessItemModel(
      image: Assets.imagesIncome,
      title: 'Income',
      date: 'Apri 2022',
      price: '\$20,129'),
  const AllExpensessItemModel(
      image: Assets.imagesExpenses,
      title: 'Expenses',
      date: 'Apri 2022',
      price: '\$20,129'),
];
int selectedIndex = 0;

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        if (index == 1) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: AllExpensessItem(
                  allExpensessItemModel: item,
                  isSelected: selectedIndex == index,
                ),
              ),
            ),
          );
        } else {
          return Expanded(
              child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: AllExpensessItem(
              allExpensessItemModel: item,
              isSelected: selectedIndex == index,
            ),
          ));
        }
      }).toList(),

      // children: items
      //     .map((e) =>
      //         Expanded(child: AllExpensessItem(allExpensessItemModel: e)))
      //     .toList(),
    );
  }
}
