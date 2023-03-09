import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/widgets/app_image.dart';
import '../../../../../core/utils/dimension.dart';
import '../../../../../core/widgets/big_text.dart';
import '../../../../../core/widgets/order_information.dart';
import '../../../../../core/widgets/small_text.dart';

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
          AppImage(
            img: 'assets/image/food4.jpg',
            height: Dimensions.listViewImgSize,
            width: Dimensions.listViewImgSize,
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
