import 'package:flutter/material.dart';
import '../utils/dimension.dart';

class AppImage extends StatelessWidget {
  const AppImage({super.key, this.width, this.height, required this.img});
  final double? width;
  final double? height;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(img),
        ),
      ),
    );
  }
}
