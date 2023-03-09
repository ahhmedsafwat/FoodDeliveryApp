import 'package:flutter/material.dart';
import 'package:food_delivery_app/features/FoodDetails/presentation/view/widgets/popular_bottom_navigation_bar.dart';
import 'package:food_delivery_app/features/FoodDetails/presentation/view/widgets/recommended_food_details_body.dart';

class RecommendedFoodDetails extends StatelessWidget {
  const RecommendedFoodDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: RecommendedFoodDetailsBody(),
      bottomNavigationBar: RecommendedBottomNavigationBar(),
    );
  }
}
