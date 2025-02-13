import 'package:flutter/material.dart';

import '../controllers/ProductController.dart';
import '../model/ProductModel.dart';
import 'ShowProductDetails.dart';
import 'package:provider/provider.dart';

class GetProductDetails extends StatefulWidget {
  const GetProductDetails({super.key});

  @override
  State<GetProductDetails> createState() => _GetProductDetailsState();
}

class _GetProductDetailsState extends State<GetProductDetails> {
  TextEditingController productImgController = TextEditingController();
  TextEditingController productNameController = TextEditingController();
  TextEditingController productPriceCOntroller = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Get Product Details",
                style: TextStyle(fontWeight: FontWeight.bold))),
        body: Padding(
            padding: EdgeInsets.all(15),
            child: Form(
                key: formKey,
                child: Column(children: [
                  // Product-Image

                  TextFormField(
                    controller: productImgController,
                    decoration: InputDecoration(
                      hintText: "Product URL",
                      hintStyle: const TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 0.3),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 2, 30, 172),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Colors.red,
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Colors.red,
                        ),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 2, 30, 172),
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isNotEmpty) {
                        return null;
                      } else {
                        return "Enter product URL";
                      }
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),

                  //Product-Name

                  TextFormField(
                    controller: productNameController,
                    decoration: InputDecoration(
                      hintText: " Product Name ",
                      hintStyle: const TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 0.3),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 2, 30, 172),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Colors.red,
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Colors.red,
                        ),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 2, 30, 172),
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isNotEmpty) {
                        return null;
                      } else {
                        return "Enter product Name";
                      }
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),

                  //Product-Price

                  TextFormField(
                    controller: productPriceCOntroller,
                    decoration: InputDecoration(
                      hintText: "Product Price ",
                      hintStyle: const TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 0.3),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 2, 30, 172),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Colors.red,
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Colors.red,
                        ),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 2, 30, 172),
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isNotEmpty) {
                        return null;
                      } else {
                        return "Enter product Price ";
                      }
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),

                  ElevatedButton(
                      onPressed: () {
                        var obj = ProductModel(
                            productImg: productImgController.text.trim(),
                            productName: productNameController.text.trim(),
                            productPrice: productPriceCOntroller.text.trim(),
                            productQuantity: 0,
                            isFavorite: false);

                        Provider.of<ProductController>(context, listen: false)
                            .addProduct(obj);

                        // clearControllers();
                      },
                      child: Text(
                        "Add Product",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      )),

                  SizedBox(
                    height: 15,
                  ),

                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => Showproductdetails(),
                      ));
                    },
                    child: Text(
                      "Show products",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                ]))));
  }
}
