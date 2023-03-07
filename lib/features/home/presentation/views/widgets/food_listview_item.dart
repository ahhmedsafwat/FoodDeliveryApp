import 'package:flutter/material.dart';

import '../../../../../core/utils/dimension.dart';

class FoodListViewItem extends StatelessWidget {
  const FoodListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: Dimensions.width30),
      child: Row(children: [
        Container(
          height: 120,
          width: 120,
          decoration: BoxDecoration(
              color: Colors.white24,
              image: const DecorationImage(
                  image: AssetImage('assets/image/food1.jpg'),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(Dimensions.radius20)),
        )
      ]),
    );
  }
}
