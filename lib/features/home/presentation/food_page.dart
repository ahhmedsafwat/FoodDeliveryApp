import 'package:flutter/material.dart';
import 'package:food_delivery_app/features/home/presentation/views/widgets/main_food_page_body.dart';

class FoodPage extends StatelessWidget {
  const FoodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: FoodPageBody());
  }
}
