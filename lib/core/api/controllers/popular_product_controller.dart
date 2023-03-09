import 'dart:ffi';

import 'package:food_delivery_app/core/api/repository/popular_products_repo.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController {
  final PopularProductRepo popularProductRepo;

  PopularProductController({required this.popularProductRepo});

  List<dynamic> _popularProductList = [];

  List<dynamic> get popularProductList => _popularProductList;

  // Future<Void> getPopbularProductList() async {
  //   Response response = await popularProductRepo.getPopularProductList();
  //   if (response.statusCode == 200) {
  //     _popularProductList = [];
  //     _popularProductList.addAll();
  //     update();
  //   } else {}
  // }
}
