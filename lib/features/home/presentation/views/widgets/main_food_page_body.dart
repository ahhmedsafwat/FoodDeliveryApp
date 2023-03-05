import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/colors.dart';
import 'package:food_delivery_app/core/utils/dimension.dart';

import 'custom_app_bar.dart';
import 'food_cards_pageview.dart';

class FoodPageBody extends StatelessWidget {
  const FoodPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        child: Container(
          margin: EdgeInsets.only(
              top: Dimensions.height45, bottom: Dimensions.height15),
          padding: EdgeInsets.symmetric(horizontal: Dimensions.width20),
          child: const CustomAppBar(),
        ),
      ),
      const FoodCardsPageView(),
    ]);
  }
}
