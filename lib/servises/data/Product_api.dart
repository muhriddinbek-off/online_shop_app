import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:online_shop_app/servises/data/modals/products.dart';
import 'package:online_shop_app/servises/data/modals/products_modal.dart';

class ProductApi extends ChangeNotifier {
  Future getProducts(String brand) async {
    print('sorov ketdi');
    Uri url = Uri.parse('https://dummyjson.com/products/category/$brand');

    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      print('sorov keldi');
      return ProductModal.fromJson(jsonDecode(response.body));
    }
    notifyListeners();
  }

  Future getProductName(int id) async {
    print('start');
    Uri url = Uri.parse('https://dummyjson.com/products/$id');
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      print('finish');
      final json = jsonDecode(response.body);

      return Products.fromJson(json);
    }
  }
}
