import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  const BigText(
      {super.key,
      this.color,
      required this.text,
      required this.size,
      this.overflow = TextOverflow.ellipsis});

  final Color? color;
  final String text;
  final double size;
  final TextOverflow overflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontSize: size,
          overflow: overflow,
          fontWeight: FontWeight.w400),
    );
  }
}
