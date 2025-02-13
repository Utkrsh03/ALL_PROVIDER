import 'package:flutter/material.dart';
import 'package:flutter_providerr_assign2_1/model/ProductModel.dart';

class WishlistController extends ChangeNotifier {
  List<ProductModel> wishlistobj = [];

  void addtowishlist({required ProductModel obj}) {
    wishlistobj.add(obj);
    notifyListeners();
  }
}
