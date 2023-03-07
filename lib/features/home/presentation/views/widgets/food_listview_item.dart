import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/widgets/big_text.dart';
import 'package:food_delivery_app/core/utils/widgets/small_text.dart';
import 'package:food_delivery_app/features/home/presentation/views/widgets/card_description.dart';

import '../../../../../core/utils/dimension.dart';
import 'order_information.dart';

class FoodListViewItem extends StatelessWidget {
  const FoodListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: Dimensions.width30),
      child: Row(
        children: [
          Container(
            height: Dimensions.listViewImgSize,
            width: Dimensions.listViewImgSize,
            decoration: BoxDecoration(
                color: Colors.white24,
                image: const DecorationImage(
                    image: AssetImage('assets/image/food5.jpg'),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(Dimensions.radius20)),
          ),
          Expanded(
            child: Container(
              height: Dimensions.listViewTextContianerSize,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(Dimensions.radius20),
                  topRight: Radius.circular(Dimensions.radius20),
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimensions.width10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const BigText(text: 'Nutritiuos fruit meal in China'),
                      SizedBox(
                        height: Dimensions.height10,
                      ),
                      const SmallText(text: 'with chinese characteristics'),
                      SizedBox(
                        height: Dimensions.height10,
                      ),
                      const OrderIformation()
                    ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
