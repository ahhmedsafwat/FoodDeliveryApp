import 'package:flutter/material.dart';

import 'small_text.dart';

class IconAndText extends StatelessWidget {
  const IconAndText({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.text,
  });
  final IconData icon;
  final String text;
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor,
        ),
        const SizedBox(
          width: 5,
        ),
        SmallText(
          text: text,
        ),
      ],
    );
  }
}
