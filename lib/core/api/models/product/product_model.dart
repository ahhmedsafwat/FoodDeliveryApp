import 'package:food_delivery_app/core/api/models/product/products.dart';

class Product {
  int? _totalSize;
  int? _typeId;
  int? _offset;
  late List<ProdcutModel> _products;

  List<ProdcutModel> get products => _products;

  Product(
      {required totalSize,
      required typeId,
      required offset,
      required List<ProdcutModel> products}) {
    _totalSize = totalSize;
    _typeId = typeId;
    _offset = offset;
    _products = products;
  }

  Product.fromJson(Map<String, dynamic> json) {
    _totalSize = json['total_size'];
    _typeId = json['type_id'];
    _offset = json['offset'];

    if (json['products'] != null) {
      _products = <ProdcutModel>[];
      json['products'].forEach((v) {
        _products.add(ProdcutModel.fromJson(v));
      });
    }
  }
}
