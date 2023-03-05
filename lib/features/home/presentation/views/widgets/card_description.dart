import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/colors.dart';
import 'package:food_delivery_app/core/utils/widgets/big_text.dart';
import 'package:food_delivery_app/core/utils/widgets/small_text.dart';
import 'package:food_delivery_app/features/home/presentation/views/widgets/rating.dart';

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
            borderRadius: BorderRadius.circular(30), color: Colors.white),
        child: Container(
            padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                BigText(text: 'Chinese Side'),
                SizedBox(height: 10),
                Rating(),
                SizedBox(
                  height: 20,
                ),
                // IconAndText(icon: icon, color: color, text: text, iconColor: iconColor)
              ],
            )),
      ),
    );
  }
}

class IconAndText extends StatelessWidget {
  const IconAndText(
      {super.key,
      required this.icon,
      required this.color,
      required this.text,
      required this.iconColor});
  final IconData icon;
  final Color color;
  final String text;
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor,
        ),
        const SizedBox(
          width: 5,
        ),
        SmallText(
          text: text,
          color: color,
        ),
      ],
    );
  }
}
