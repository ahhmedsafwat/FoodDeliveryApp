import 'package:food_delivery_app/core/api/api_service.dart';
import 'package:food_delivery_app/core/api/repository/main_repo.dart';
import 'package:get/get.dart';

class PopularProductRepo extends GetxService implements MainRepo {
  final ApiService apiService;

  PopularProductRepo({required this.apiService});

  @override
  Future<Response> getPopularProductList() async {
    return await apiService
        .getData('hettp://www.dbestech.com/api/product/list');
  }
}
