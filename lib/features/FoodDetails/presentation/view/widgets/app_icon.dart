import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/dimension.dart';

class AppIcons extends StatelessWidget {
  const AppIcons(
      {super.key,
      required this.icon,
      this.BackGroundColor = const Color(0xfffcf4e4),
      this.iconColor = const Color(0xff756d54),
      this.size = 40});

  final IconData icon;
  final Color BackGroundColor;
  final Color iconColor;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size / 2),
        color: BackGroundColor,
      ),
      child: Icon(
        icon,
        size: Dimensions.iconSize16,
      ),
    );
  }
}
