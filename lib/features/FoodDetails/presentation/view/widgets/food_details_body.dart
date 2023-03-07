import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/dimension.dart';
import 'package:food_delivery_app/features/FoodDetails/presentation/view/widgets/app_icon.dart';

import '../../../../../core/widgets/big_text.dart';
import '../../../../../core/widgets/order_information.dart';
import '../../../../home/presentation/views/widgets/rating.dart';

class FoodDetailsBody extends StatelessWidget {
  const FoodDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: Dimensions.height45,
          left: Dimensions.width20,
          right: Dimensions.width20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              AppIcons(
                icon: Icons.arrow_back_ios,
              ),
              AppIcons(
                icon: Icons.shopping_cart_outlined,
              )
            ],
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          child: Container(
            width: double.infinity,
            height: Dimensions.foodDetailsImgSize,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/image/food2.jpg'),
              ),
            ),
          ),
        ),
        Positioned(
            left: 0,
            right: 0,
            top: Dimensions.foodDetailsImgSize - 20,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                  top: Dimensions.height20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(Dimensions.radius20),
                      topLeft: Radius.circular(Dimensions.radius20)),
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BigText(text: 'Chinese Side'),
                  SizedBox(height: Dimensions.height10),
                  const Rating(),
                  SizedBox(height: Dimensions.height20),
                  const OrderIformation()
                ],
              ),
            )),
      ],
    );
  }
}
