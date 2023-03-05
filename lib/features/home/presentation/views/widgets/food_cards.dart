import 'package:flutter/material.dart';
import 'card_description.dart';
import 'card_image.dart';

class FoodCards extends StatelessWidget {
  const FoodCards({super.key, this.index});
  final int? index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CardsImage(index: index!),
        const CardsDescription(),
      ],
    );
  }
}
