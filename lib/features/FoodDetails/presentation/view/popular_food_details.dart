import 'package:flutter/material.dart';
import 'package:food_delivery_app/features/FoodDetails/presentation/view/widgets/popular_food_details_body.dart';

class PopularFoodDetails extends StatelessWidget {
  const PopularFoodDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PopularFoodDetailsBody(),
    );
  }
}
