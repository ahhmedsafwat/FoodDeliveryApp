import 'package:flutter/material.dart';

import 'food_listview_item.dart';

class FoodListView extends StatelessWidget {
  const FoodListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const FoodListViewItem();
      },
    );
  }
}
