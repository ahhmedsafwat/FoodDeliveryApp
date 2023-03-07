import 'package:flutter/material.dart';
import 'package:food_delivery_app/features/FoodDetails/presentation/view/widgets/bottom_navigation_bar.dart';
import 'package:food_delivery_app/features/FoodDetails/presentation/view/widgets/food_details_body.dart';

class FoodDetails extends StatelessWidget {
  const FoodDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: FoodDetailsBody(),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
