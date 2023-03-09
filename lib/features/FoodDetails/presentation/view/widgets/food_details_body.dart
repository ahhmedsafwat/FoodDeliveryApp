import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/dimension.dart';
import 'package:food_delivery_app/core/widgets/app_image.dart';
import 'package:food_delivery_app/features/FoodDetails/presentation/view/widgets/app_icon.dart';
import '../../../../../core/widgets/big_text.dart';
import '../../../../../core/widgets/order_information.dart';
import '../../../../home/presentation/view/widgets/rating.dart';
import 'expendable_text.dart';

class FoodDetailsBody extends StatelessWidget {
  const FoodDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            left: 0,
            right: 0,
            child: AppImage(
              img: 'assets/image/food3.jpg',
              width: double.infinity,
              height: Dimensions.foodDetailsImgSize,
            )),
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
                  const OrderIformation(),
                  SizedBox(height: Dimensions.height20),
                  const BigText(text: 'Introduce'),
                  SizedBox(height: Dimensions.height20),
                  const Expanded(
                    child: SingleChildScrollView(
                      child: ExpandableText(
                          text:
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quisque egesta. ut labore et dolore magna aliqua. Quisque egesta. ut labore et dolore magna aliqua. Quisque egesta. ut labore et dolore magna aliqua. Quisque egesta.'),
                    ),
                  )
                ],
              ),
            )),
      ],
    );
  }
}
