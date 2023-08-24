import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:online_shop_app/modals/smartfon_modal.dart';
import 'package:http/http.dart' as http;

class SmartfonTypes with ChangeNotifier {
  List<SmartfonModal> smartfons = [];

  Future<void> getSmartfons() async {
    Uri url = Uri.parse('https://dummyjson.com/products/category/smartphones');

    http.Response response = await http.get(url);

    Map data = jsonDecode(response.body);

    List smartfonCategory = data['products'];

    for (Map<String, dynamic> smartfon in smartfonCategory) {
      smartfons.add(SmartfonModal.fromJson(smartfon));
    }

    notifyListeners();
  }
}
