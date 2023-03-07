import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features/FoodDetails/presentation/view/food_details.dart';
import 'features/home/presentation/food_page.dart';

void main(List<String> args) {
  runApp(const FoodDeliveryApp());
}

class FoodDeliveryApp extends StatelessWidget {
  const FoodDeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: FoodDetails(),
    );
  }
}
