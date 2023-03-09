import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/dimension.dart';

class AppIcons extends StatelessWidget {
  const AppIcons({
    super.key,
    required this.icon,
    this.BackgroundColor = const Color(0xfffcf4e4),
    this.iconColor = const Color(0xff756d54),
    this.size = 40,
    this.iconSize = 16,
  });

  final IconData icon;
  final Color BackgroundColor;
  final Color iconColor;
  final double size;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size / 2),
        color: BackgroundColor,
      ),
      child: Icon(
        icon,
        size: iconSize,
        color: iconColor,
      ),
    );
  }
}
