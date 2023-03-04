import 'package:flutter/material.dart';

class FoodCards extends StatelessWidget {
  const FoodCards({super.key, this.index});
  final int? index;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      CardsImage(
        index: index!,
      ),
      const CardsText()
    ]);
  }
}

class CardsImage extends StatelessWidget {
  const CardsImage({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 220,
        margin: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color:
              index.isEven ? const Color(0xff69c5df) : const Color(0xff929fcc),
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/image/food1.jpg'),
          ),
        ));
  }
}

class CardsText extends StatelessWidget {
  const CardsText({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 150,
        margin: const EdgeInsets.only(left: 30, right: 30, bottom: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: Colors.blue),
      ),
    );
  }
}
