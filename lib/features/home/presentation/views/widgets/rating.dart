import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/widgets/small_text.dart';

class Rating extends StatelessWidget {
  const Rating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Wrap(
            children: List.generate(
                5,
                (index) => const Icon(Icons.star,
                    color: AppColors.mainColor, size: 16))),
        const SizedBox(width: 10),
        const SmallText(text: '4.5'),
        const SizedBox(width: 10),
        const SmallText(text: '1287'),
        const SizedBox(width: 10),
        const SmallText(text: 'Comments')
      ],
    );
  }
}
