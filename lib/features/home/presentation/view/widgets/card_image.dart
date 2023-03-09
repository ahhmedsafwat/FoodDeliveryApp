import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/dimension.dart';

class CardsImage extends StatelessWidget {
  const CardsImage({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: Dimensions.pageViewContainer,
        margin: EdgeInsets.symmetric(horizontal: Dimensions.width10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.radius30),
          color:
              index.isEven ? const Color(0xff69c5df) : const Color(0xff929fcc),
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/image/food1.jpg'),
          ),
        ));
  }
}
