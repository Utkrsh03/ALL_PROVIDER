import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_k_cart_1/model/all_product_model.dart';

class AddToCartController extends ChangeNotifier {
  List<AllProductModel> listOfCartProducts = [];
  double itemTotal = 0;

  void addToCart({required dynamic product}) {
    log("$product");
    itemTotal = itemTotal + product.price;
    listOfCartProducts.add(product);
    notifyListeners();
  }
}
