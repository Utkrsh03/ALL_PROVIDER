import 'package:flutter_k_cart_1/model/all_product_model.dart';

class GetAllProductModel {
  List<AllProductModel>? listOfProducts;

  GetAllProductModel(Map<String, dynamic> json) {
    listOfProducts = [];

    if (json['products'] != null) {
      json['products'].forEach(
        (mapObj) {
          AllProductModel localObj = AllProductModel(mapObj);
          listOfProducts!.add(localObj);
        },
      );
    }
  }
}
