import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/api/helper/dependencies.dart' as dep;
import 'package:get/get.dart';
import 'features/FoodDetails/presentation/view/popular_food_details.dart';
import 'features/FoodDetails/presentation/view/recommended_food_details.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const FoodDeliveryApp());
}

class FoodDeliveryApp extends StatelessWidget {
  const FoodDeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: RecommendedFoodDetails(),
    );
  }
}
