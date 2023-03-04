import 'package:flutter/material.dart';

class FoodCards extends StatelessWidget {
  const FoodCards({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: const Color(0xff69c5df),
      ),
    );
  }
}
