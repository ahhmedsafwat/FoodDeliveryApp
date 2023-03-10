import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/dimension.dart';

class BigText extends StatelessWidget {
  const BigText(
      {super.key,
      this.color = const Color(0xff332d2b),
      required this.text,
      this.size = 0,
      this.overflow = TextOverflow.ellipsis});

  final Color? color;
  final String text;
  final double size;
  final TextOverflow overflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      style: TextStyle(
          color: color,
          fontSize: size == 0 ? Dimensions.font26 : size,
          overflow: overflow,
          fontWeight: FontWeight.w400,
          fontFamily: 'Roboto'),
    );
  }
}
