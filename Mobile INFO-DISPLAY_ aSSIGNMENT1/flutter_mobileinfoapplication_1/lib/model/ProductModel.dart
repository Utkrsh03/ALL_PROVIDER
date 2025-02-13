class ProductModel {
  String? productImg;
  String? productName;
  String? productPrice;
  int? productQuantity = 0;
  bool isFavourite = false;

  ProductModel(
      {this.productName,
      this.productImg,
      this.isFavourite = false,
      this.productPrice,
      this.productQuantity});
}
