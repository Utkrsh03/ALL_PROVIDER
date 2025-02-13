import 'package:flutter/material.dart';
import 'package:flutter_k_cart_1/controllers/all_to_cart_controller.dart';
import 'package:flutter_k_cart_1/controllers/get_all_product_controller.dart';
import 'package:flutter_k_cart_1/model/all_product_model.dart';
import 'package:flutter_k_cart_1/view/cart_screen/cart_screen.dart';
import 'package:flutter_k_cart_1/view/product_details_screen.dart/product_details_Screen.dart';
import 'package:flutter_k_cart_1/view/ui_helper/height_resolution.dart';
import 'package:flutter_k_cart_1/view/ui_helper/width_resolution.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductGridView extends StatefulWidget {
  const ProductGridView({super.key});

  @override
  State<ProductGridView> createState() => ProductGridViewState();
}

class ProductGridViewState extends State<ProductGridView> {
  List<AllProductModel> products = [];

  void getDataLocal() async {
    products =
        await Provider.of<GetAllProductController>(context, listen: false)
            .getAllProducts();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.76,
        mainAxisSpacing: HeightResolution.responsiveHeight(
            context: context, responsiveHeight: 0.03),
      ),
      itemCount: products.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.symmetric(
            horizontal: WidthResolution.responsiveWidth(
              context: context,
              responsiveWidth: 0.05,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return ProductDetailScreen(
                      detailsOfProduct: products[index],
                      indexOfImage: index,
                    );
                  }));
                },
                child: Image.network(
                  products[index].listOfProductImage![0].imageURL!,
                  height: 176,
                  width: 176,
                ),
              ),
              Text(
                "${products[index].title}",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: WidthResolution.responsiveWidth(
                    context: context,
                    responsiveWidth: 0.033,
                  ),
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  Text(
                    "${products[index].price} \$",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: WidthResolution.responsiveWidth(
                        context: context,
                        responsiveWidth: 0.033,
                      ),
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Provider.of<AddToCartController>(context, listen: false)
                          .addToCart(product: products[index]);
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: WidthResolution.responsiveWidth(
                            context: context, responsiveWidth: 0.03),
                        vertical: HeightResolution.responsiveHeight(
                            context: context, responsiveHeight: 0.004),
                      ),
                      child: Text(
                        "Add",
                      ),
                    ),
                  ),

                  // Container(
                  //   padding: EdgeInsets.symmetric(
                  //     horizontal: WidthResolution.responsiveWidth(
                  //         context: context, responsiveWidth: 0.01),
                  //     vertical: HeightResolution.responsiveHeight(
                  //         context: context, responsiveHeight: 0.004),
                  //   ),
                  //   decoration: BoxDecoration(
                  //     color: Colors.red,
                  //     borderRadius: BorderRadius.circular(7),
                  //   ),
                  //   child: Row(
                  //     children: [
                  //       Icon(
                  //         Icons.remove,
                  //         color: Colors.white,
                  //         size: WidthResolution.responsiveWidth(
                  //           context: context,
                  //           responsiveWidth: 0.041,
                  //         ),
                  //       ),
                  //       SizedBox(
                  //         width: WidthResolution.responsiveWidth(
                  //           context: context,
                  //           responsiveWidth: 0.02,
                  //         ),
                  //       ),
                  //       Text(
                  //         "1",
                  //         style: GoogleFonts.poppins(
                  //           color: Colors.white,
                  //         ),
                  //       ),
                  //       SizedBox(
                  //         width: WidthResolution.responsiveWidth(
                  //           context: context,
                  //           responsiveWidth: 0.02,
                  //         ),
                  //       ),
                  //       Icon(
                  //         Icons.add,
                  //         color: Colors.white,
                  //         size: WidthResolution.responsiveWidth(
                  //           context: context,
                  //           responsiveWidth: 0.041,
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
