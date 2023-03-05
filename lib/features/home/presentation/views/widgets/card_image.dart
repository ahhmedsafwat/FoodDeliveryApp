import 'package:flutter/material.dart';

class CardsImage extends StatelessWidget {
  const CardsImage({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 220,
        margin: const EdgeInsets.symmetric(horizontal: 10),
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
