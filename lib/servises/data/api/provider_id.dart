import 'package:flutter/material.dart';
import 'package:online_shop_app/servises/data/Product_api.dart';
import 'package:online_shop_app/servises/data/modals/products.dart';

class PrductViewModal extends ChangeNotifier {
  List<Products> products = [];
  bool isLoading = false;

  Future<void> getProductInfo(int id) async {
    isLoadingState();
    final data = await ProductApi().getProductName(id);
    products.add(data);
    isLoadingState();
    print(products[0].brand);
  }

  void isLoadingState() {
    isLoading = !isLoading;
    notifyListeners();
  }
}
