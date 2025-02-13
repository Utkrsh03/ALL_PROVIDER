import 'package:flutter_k_cart_1/model/product_image_model.dart';

class AllProductModel {
  int? id;
  String? title;
  String? description;
  String? category;
  double? price;

  //

  int? inStock;
  String? brand;
  String? Warrenty;
  String? returnpolicy;
  String? deliveryIn;
  List<ProductImageModel>? listOfProductImage;

  AllProductModel(Map<String, dynamic> productJson) {
    id = productJson['id'];
    title = productJson['title'];
    description = productJson['description'];
    category = productJson['category'];
    price = productJson['price'];
    inStock = productJson['stock'];
    brand = productJson['brand'];
    Warrenty = productJson['warrantyInformation'];
    returnpolicy = productJson['returnPolicy'];
    deliveryIn = productJson['shippingInformation'];

    listOfProductImage = [];
    if (productJson['images'] != null) {
      productJson['images'].forEach((mapObj1) {
        ProductImageModel localObj1 = ProductImageModel(mapObj1);

        listOfProductImage!.add(localObj1);
      });
    }
  }
}
