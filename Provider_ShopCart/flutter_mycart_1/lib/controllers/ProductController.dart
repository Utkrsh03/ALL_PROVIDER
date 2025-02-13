import 'package:flutter/material.dart';
import 'package:flutter_mycart_1/model/ProductModel.dart/productmodel2.dart';

class ProductController extends ChangeNotifier {
  List<ProductModel> productmodelobj = [];

  void addObjIncart({required ProductModel obj}) {
    productmodelobj.add(obj);
    notifyListeners();
  }

  void addQuantity({required int index}) {
    productmodelobj[index].quantity = productmodelobj[index].quantity += 1;
    notifyListeners();
  }

  void removeQuantity({required int index}) {
    productmodelobj[index].quantity = productmodelobj[index].quantity -= 1;
    notifyListeners();
  }
}
