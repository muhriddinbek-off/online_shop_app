import 'package:flutter/material.dart';
import 'package:online_shop_app/servises/data/Product_api.dart';
import 'package:online_shop_app/servises/data/modals/products_modal.dart';

class ProviderApiServise extends ChangeNotifier {
  ProviderApiServise() {
    getApiInfo();
  }
  bool isLoading = false;
  List<ProductModal> productInfo = [];
  String nameProduct = 'Smartphones';
  Future<void> getApiInfo() async {
    getIsLoading();
    final data = await ProductApi().getProducts(nameProduct);
    productInfo.add(data);
    getIsLoading();
    notifyListeners();
  }

  void getIsLoading() {
    isLoading = !isLoading;
    notifyListeners();
  }
}
