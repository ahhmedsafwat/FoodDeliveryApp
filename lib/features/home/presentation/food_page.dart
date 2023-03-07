
import 'package:flutter/material.dart';
import 'package:food_delivery_app/features/home/presentation/views/widgets/main_food_page_body.dart';

class MainFoodPage extends StatelessWidget {
  const MainFoodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: FoodPageBody());
  }
}
