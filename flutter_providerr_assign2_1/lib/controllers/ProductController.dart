import 'package:flutter/material.dart';
import 'package:flutter_providerr_assign2_1/model/ProductModel.dart';

class ProductController extends ChangeNotifier {
  List<ProductModel> productModelObjList = [];

  void addProduct(ProductModel productModelObj) {
    productModelObjList.add(productModelObj);
    notifyListeners();
  }

  void addQuantity(int index) {
    productModelObjList[index].productQuantity =
        productModelObjList[index].productQuantity! + 1;

    notifyListeners();
  }

  void removeQuantity(int index) {
    productModelObjList[index].productQuantity =
        productModelObjList[index].productQuantity! - 1;
    notifyListeners();
  }

  void addToFavorite({required int index}) {
    productModelObjList[index].isFavorite =
        productModelObjList[index].isFavorite;
    notifyListeners();
  }
}
