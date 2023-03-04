import 'package:flutter/material.dart';

import 'food_cards.dart';

class FoodCardsPageView extends StatefulWidget {
  const FoodCardsPageView({super.key});

  @override
  State<FoodCardsPageView> createState() => _FoodCardsPageViewState();
}

class _FoodCardsPageViewState extends State<FoodCardsPageView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      child: PageView.builder(
        itemCount: 5,
        itemBuilder: (context, position) {
          return FoodCards(
            index: position,
          );
        },
      ),
    );
  }
}
