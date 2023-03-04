
import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/colors.dart';

import 'custom_app_bar.dart';
import 'food_cards_pageview.dart';

class FoodPageBody extends StatelessWidget {
  const FoodPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        child: Container(
          margin: const EdgeInsets.only(top: 45, bottom: 15),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: const CustomAppBar(),
        ),
      ),
      const FoodCardsPageView(),
    ]);
  }
}
