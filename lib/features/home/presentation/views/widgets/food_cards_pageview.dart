import 'dart:ffi';

import 'package:flutter/material.dart';

import 'food_cards.dart';

class FoodCardsPageView extends StatefulWidget {
  const FoodCardsPageView({super.key});

  @override
  State<FoodCardsPageView> createState() => _FoodCardsPageViewState();
}

class _FoodCardsPageViewState extends State<FoodCardsPageView> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currPageValue = 0.0;
  double _scaleFactor = 0.8;
  double _height = 220;
  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      child: PageView.builder(
        controller: pageController,
        physics: const BouncingScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, position) {
          return Transform(
            transform: scalingScroller(position),
            child: FoodCards(
              index: position,
            ),
          );
        },
      ),
    );
  }

  Matrix4 scalingScroller(int position) {
    Matrix4 matrix = Matrix4.identity();
    if (position == _currPageValue.floor()) {
      var currScale = 1 - (_currPageValue - position) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);

      return matrix;
    } else if (position == _currPageValue.floor() + 1) {
      var currScale =
          _scaleFactor + (_currPageValue - position + 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);

      return matrix;
    } else if (position == _currPageValue.floor() - 1) {
      var currScale =
          _scaleFactor + (_currPageValue - position - 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);

      return matrix;
    } else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 0);
      return matrix;
    }
  }
}
