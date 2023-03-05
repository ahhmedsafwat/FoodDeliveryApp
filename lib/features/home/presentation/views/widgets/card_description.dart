import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/colors.dart';
import 'package:food_delivery_app/core/utils/widgets/big_text.dart';
import 'package:food_delivery_app/features/home/presentation/views/widgets/rating.dart';
import '../../../../../core/utils/widgets/icon_and_text.dart';

class CardsDescription extends StatelessWidget {
  const CardsDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 120,
        margin: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
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
            padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const BigText(text: 'Chinese Side'),
                const SizedBox(height: 10),
                const Rating(),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    IconAndText(
                      icon: Icons.circle_sharp,
                      iconColor: AppColors.iconColor1,
                      text: 'Normal',
                    ),
                    IconAndText(
                        icon: Icons.location_on,
                        iconColor: AppColors.mainColor,
                        text: '1.7km'),
                    IconAndText(
                        icon: Icons.watch_later_outlined,
                        iconColor: AppColors.iconColor2,
                        text: '12 min')
                  ],
                )
                // IconAndText(icon: icon, color: color, text: text, iconColor: iconColor)
              ],
            )),
      ),
    );
  }
}
