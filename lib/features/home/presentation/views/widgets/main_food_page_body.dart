import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/colors.dart';
import 'package:food_delivery_app/core/utils/dimension.dart';
import 'package:food_delivery_app/core/utils/widgets/big_text.dart';
import 'package:food_delivery_app/core/utils/widgets/small_text.dart';
import 'package:food_delivery_app/features/home/presentation/views/widgets/popular_text_section.dart';

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
      SizedBox(height: Dimensions.height30),
      const PopularTextSecion(),
      Expanded(child: FoodListView()),
    ]);
  }
}

class FoodListView extends StatelessWidget {
  const FoodListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return FoodListViewItem();
      },
    );
  }
}

class FoodListViewItem extends StatelessWidget {
  const FoodListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: Dimensions.width30),
      child: Row(children: [
        Container(
          width: Dimensions.width45,
          height: Dimensions.height45,
          decoration: BoxDecoration(
              color: Colors.white24,
              image:
                  DecorationImage(image: AssetImage('assets/image/food5.jpg')),
              borderRadius: BorderRadius.circular(Dimensions.radius20)),
        )
      ]),
    );
  }
}
