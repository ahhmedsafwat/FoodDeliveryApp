import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/dimension.dart';
import 'package:food_delivery_app/features/home/presentation/view/widgets/popular_text_section.dart';
import 'custom_app_bar.dart';
import 'food_cards_pageview.dart';
import 'food_listview.dart';

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
      const CustomScrollableBody()
    ]);
  }
}

class CustomScrollableBody extends StatelessWidget {
  const CustomScrollableBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(children: [
          const FoodCardsPageView(),
          SizedBox(height: Dimensions.height30),
          const PopularTextSecion(),
          SizedBox(height: Dimensions.height15),
          const FoodListView(),
        ]),
      ),
    );
  }
}
