import 'package:flutter/material.dart';
import 'package:food_delivery_app/features/FoodDetails/presentation/view/widgets/popular_food_details_body.dart';
import 'package:food_delivery_app/features/FoodDetails/presentation/view/widgets/popular_food_details_bottom_navigation_bar.dart';

class PopularFoodDetails extends StatelessWidget {
  const PopularFoodDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: PopularFoodDetailsBody(),
      bottomNavigationBar: PopularFoodDetailsBottomNavigationBar(),
    );
  }
}
