import 'package:flutter/material.dart';

import 'food_cards.dart';

class FoodCardsPageView extends StatefulWidget {
  const FoodCardsPageView({super.key});

  @override
  State<FoodCardsPageView> createState() => _FoodCardsPageViewState();
}

class _FoodCardsPageViewState extends State<FoodCardsPageView> {
  PageController pageController = PageController(viewportFraction: 0.85);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      color: Colors.red,
      child: PageView.builder(
        controller: pageController,
        physics: const BouncingScrollPhysics(),
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
