import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/dimension.dart';
import 'package:food_delivery_app/core/utils/widgets/big_text.dart';
import 'package:food_delivery_app/core/utils/widgets/small_text.dart';

import '../../../../../core/utils/colors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            const BigText(
              text: 'Egypt',
              color: AppColors.mainColor,
              size: 20,
            ),
            Row(children: const [
              SmallText(
                text: 'Mansoura',
                color: Colors.black54,
              ),
              Icon(
                Icons.arrow_drop_down,
                size: 18,
              )
            ])
          ],
        ),
        Center(
          child: Container(
            width: Dimensions.width45,
            height: Dimensions.height45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius15),
              color: AppColors.mainColor,
            ),
            child: Icon(
              Icons.search,
              color: Colors.white,
              size: Dimensions.iconSize,
            ),
          ),
        ),
      ],
    );
  }
}
