import 'package:flutter/material.dart';

import '../../../../../core/utils/dimension.dart';
import '../../../../../core/utils/widgets/big_text.dart';
import '../../../../../core/utils/widgets/small_text.dart';

class PopularTextSecion extends StatelessWidget {
  const PopularTextSecion({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: Dimensions.width30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const BigText(text: 'Popular'),
          SizedBox(width: Dimensions.width10),
          Container(
            margin: const EdgeInsets.only(bottom: 3),
            child: const BigText(
              text: '.',
              color: Colors.black26,
            ),
          ),
          SizedBox(width: Dimensions.width10),
          Container(
              margin: const EdgeInsets.only(bottom: 2),
              child: const SmallText(text: 'Food Pairing')),
        ],
      ),
    );
  }
}
