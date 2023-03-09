import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/colors.dart';
import 'package:food_delivery_app/core/utils/dimension.dart';
import 'package:food_delivery_app/core/widgets/big_text.dart';
import 'package:food_delivery_app/features/FoodDetails/presentation/view/widgets/app_icon.dart';

import 'food_details_bottom_navigation_bar.dart';

class PopularBottomNavigationBar extends StatelessWidget {
  const PopularBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: Dimensions.width20 * 2.5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppIcons(
              icon: Icons.remove,
              BackgroundColor: AppColors.mainColor,
              iconColor: Colors.white,
              iconSize: Dimensions.iconSize24,
            ),
            BigText(
              text: '\$12.88 X 0',
              color: AppColors.mainBlackColor,
              size: Dimensions.font26,
            ),
            AppIcons(
              icon: Icons.add,
              BackgroundColor: AppColors.mainColor,
              iconSize: Dimensions.iconSize24,
              iconColor: Colors.white,
            ),
          ],
        ),
      ),
      Container(
        height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.symmetric(
          vertical: Dimensions.height30,
          horizontal: Dimensions.width20,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(Dimensions.radius20 * 2),
              topRight: Radius.circular(Dimensions.radius20 * 2)),
          color: AppColors.buttonBackgroundColor,
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
              padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.width20,
                  vertical: Dimensions.height20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white,
              ),
              child: const Icon(
                Icons.favorite,
                color: AppColors.mainColor,
              )),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: Dimensions.width20, vertical: Dimensions.height20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: AppColors.mainColor),
            child: const BigText(
              text: '\$10 | Add to cart',
              color: Colors.white,
            ),
          )
        ]),
      )
    ]);
  }
}
