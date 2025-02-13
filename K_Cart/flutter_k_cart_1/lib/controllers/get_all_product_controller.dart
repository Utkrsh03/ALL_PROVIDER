import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_k_cart_1/model/get_all_product_model.dart';
import 'package:http/http.dart' as http;

class GetAllProductController extends ChangeNotifier {
  getAllProducts() async {
    Uri url = Uri.parse('https://dummyjson.com/products');

    http.Response response = await http.get(url);
    Map<String, dynamic> jsonData = json.decode(response.body);

    GetAllProductModel productModelObj = GetAllProductModel(jsonData);
    return productModelObj.listOfProducts!;
  }

  @override
  notifyListeners();
}
