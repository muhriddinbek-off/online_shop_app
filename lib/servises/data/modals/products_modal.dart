import 'package:online_shop_app/servises/data/modals/products.dart';

class ProductModal {
  List<Products> products;
  ProductModal({
    required this.products,
  });
  factory ProductModal.fromJson(Map<String, dynamic> json) {
    List<Products> data = [];
    json['products'].forEach((e) {
      data.add(Products.fromJson(e));
    });
    return ProductModal(
      products: List.from(data),
    );
  }
}
