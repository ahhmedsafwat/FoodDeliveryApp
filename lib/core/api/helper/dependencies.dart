import 'package:food_delivery_app/core/api/api_service.dart';
import 'package:food_delivery_app/core/api/controllers/popular_product_controller.dart';
import 'package:food_delivery_app/core/api/repository/popular_products_repo.dart';
import 'package:get/get.dart';

Future<void> init() async {
  // api client
  Get.lazyPut(() => ApiService(appBaseUrl: 'https://www.dbsetch.com'));

  // repos
  Get.lazyPut(() => PopularProductRepo(apiService: Get.find()));

  // controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
