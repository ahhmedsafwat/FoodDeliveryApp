import 'package:flutter/material.dart';
import 'package:food_delivery_app/features/home/presentation/views/widgets/custom_app_bar.dart';

class MainFoodPage extends StatelessWidget {
  const MainFoodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          Container(
            child: Container(
              margin: const EdgeInsets.only(top: 45, bottom: 15),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const CustomAppBar(),
            ),
          ),
        ]),
      ),
    );
  }
}
