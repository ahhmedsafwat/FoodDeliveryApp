import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/dimension.dart';
import '../../../../../core/widgets/big_text.dart';

class FoodDetailsBottomNavigationBar extends StatelessWidget {
  const FoodDetailsBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: Dimensions.width20, vertical: Dimensions.height20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimensions.radius20),
            color: Colors.white,
          ),
          child: Row(children: [
            const Icon(
              Icons.remove,
              color: AppColors.signColor,
            ),
            SizedBox(width: Dimensions.width10 / 2),
            const BigText(text: '0'),
            SizedBox(width: Dimensions.width10 / 2),
            const Icon(
              Icons.add,
              color: AppColors.signColor,
            )
          ]),
        ),
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
    );
  }
}
