import 'package:flutter/material.dart';

import '../utils/colors.dart';
import 'icon_and_text.dart';

class OrderIformation extends StatelessWidget {
  const OrderIformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        IconAndText(
          icon: Icons.circle_sharp,
          iconColor: AppColors.iconColor1,
          text: 'Normal',
        ),
        IconAndText(
            icon: Icons.location_on,
            iconColor: AppColors.mainColor,
            text: '1.7km'),
        IconAndText(
            icon: Icons.watch_later_outlined,
            iconColor: AppColors.iconColor2,
            text: '12 min')
      ],
    );
  }
}
