import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/dimension.dart';
import '../../../../../core/widgets/big_text.dart';
import 'app_icon.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      toolbarHeight: 70,
      title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            AppIcons(
              icon: Icons.clear,
            ),
            AppIcons(icon: Icons.shopping_cart_outlined)
          ]),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(30),
        child: Container(
          width: double.maxFinite,
          padding: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimensions.radius20),
                  topRight: Radius.circular(Dimensions.radius20))),
          child: Center(
              child: BigText(
            text: 'Chinese Side',
            size: Dimensions.font26,
          )),
        ),
      ),
      pinned: true,
      backgroundColor: AppColors.yellowColor,
      expandedHeight: 300,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.asset(
          'assets/image/food0.png',
          width: double.maxFinite,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
