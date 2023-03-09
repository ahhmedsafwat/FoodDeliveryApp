import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/dimension.dart';

import 'cusotm_sliver_appbar.dart';
import 'expendable_text.dart';

class PopularFoodDetailsBody extends StatelessWidget {
  const PopularFoodDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const CustomSliverAppBar(),
        SliverToBoxAdapter(
            child: Column(
          children: [
            Container(
              color: Colors.white,
              margin: EdgeInsets.symmetric(horizontal: Dimensions.width15),
              child: ExpandableText(
                text:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quisque egesta. ut labore et dolore magna aliqua. Quisque egesta. ut labore et dolore magna aliqua. Quisque egesta. ut labore et dolore magna aliqua. Quisque egesta.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quisque egesta. ut labore et dolore magna aliqua. Quisque egesta. ut labore et dolore magna aliqua. Quisque egesta. ut labore et dolore magna aliqua. Quisque egesta.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quisque egesta. ut labore et dolore magna aliqua. Quisque egesta. ut labore et dolore magna aliqua. Quisque egesta. ut labore et dolore magna aliqua. Quisque egesta.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quisque egesta. ut labore et dolore magna aliqua. Quisque egesta. ut labore et dolore magna aliqua. Quisque egesta. ut labore et dolore magna aliqua. Quisque egesta.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quisque egesta. ut labore et dolore magna aliqua. Quisque egesta. ut labore et dolore magna aliqua. Quisque egesta. ut labore et dolore magna aliqua. Quisque egesta.',
              ),
            )
          ],
        ))
      ],
    );
  }
}
