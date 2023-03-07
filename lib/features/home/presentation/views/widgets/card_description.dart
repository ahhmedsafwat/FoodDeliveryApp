import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/colors.dart';
import 'package:food_delivery_app/core/utils/dimension.dart';
import 'package:food_delivery_app/core/utils/widgets/big_text.dart';
import 'package:food_delivery_app/features/home/presentation/views/widgets/rating.dart';
import '../../../../../core/utils/widgets/icon_and_text.dart';
import 'order_information.dart';

class CardsDescription extends StatelessWidget {
  const CardsDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: Dimensions.pageViewTextContainer,
        margin: EdgeInsets.only(
            left: Dimensions.width30,
            right: Dimensions.width30,
            bottom: Dimensions.height30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.radius20),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Color(0xffe8e8e8),
              blurRadius: 5,
              offset: Offset(0, 5),
            ),
            BoxShadow(
              color: Colors.white,
              offset: Offset(-5, 0),
            ),
            BoxShadow(
              color: Colors.white,
              offset: Offset(5, 0),
            )
          ],
        ),
        child: Container(
            padding:
                EdgeInsets.only(top: Dimensions.height15, left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const BigText(text: 'Chinese Side'),
                SizedBox(height: Dimensions.height10),
                const Rating(),
                SizedBox(height: Dimensions.height20),
                const OrderIformation()
                // IconAndText(icon: icon, color: color, text: text, iconColor: iconColor)
              ],
            )),
      ),
    );
  }
}
