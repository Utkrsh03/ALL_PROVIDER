import 'package:flutter/material.dart';
import 'package:flutter_mobileinfoapplication_1/model/ProductModel.dart';

class ProductController extends ChangeNotifier {
  ProductModel? productmodelobj1;

  void addProductData(ProductModel productmodelobj1) {
    this.productmodelobj1 = productmodelobj1;
  }

  void isToggle() {
    productmodelobj1!.isFavourite = !productmodelobj1!.isFavourite;
    notifyListeners();
  }

  void addQuantity() {
    productmodelobj1!.productQuantity = productmodelobj1!.productQuantity! + 1;
    notifyListeners();
  }

  void removeQuantity(int productQuantity) {
    productmodelobj1!.productQuantity = productmodelobj1!.productQuantity! - 1;
    notifyListeners();
  }
}
