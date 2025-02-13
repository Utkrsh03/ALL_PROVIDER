import 'package:flutter/material.dart';
import 'package:flutter_mobileinfoapplication_1/controller/product_controller.dart';
import 'package:flutter_mobileinfoapplication_1/model/ProductModel.dart';
import 'package:flutter_mobileinfoapplication_1/views/display_product.dart';
import 'package:provider/provider.dart';

class GetProduct extends StatefulWidget {
  const GetProduct({super.key});

  @override
  State<GetProduct> createState() => _GetProductState();
}

class _GetProductState extends State<GetProduct> {
  TextEditingController productNameController = TextEditingController();
  TextEditingController productImage = TextEditingController();
  TextEditingController productPrice = TextEditingController();

  GlobalKey<FormState> formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Product Details",
              style: TextStyle(fontWeight: FontWeight.bold)),
          backgroundColor: Colors.blue.shade200,
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: Form(
                key: formkey,
                child: Column(children: [
                  const Text(" Enter product image",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w500)),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                      controller: productImage,
                      decoration: InputDecoration(
                        hintText: "Paste your url",
                        hintStyle: TextStyle(color: Color.fromARGB(0, 0, 0, 1)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 6, 3, 193))),
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
                            color: Color.fromARGB(255, 6, 3, 193),
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (value!.isNotEmpty) {
                          return null;
                        } else {
                          return "Enter product name";
                        }
                      }),

                  const SizedBox(height: 20),

//////////////////////////////////////////////////////////////////////////////

                  // Enter product Name
                  const Text(" Enter Product Name",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w500)),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                      controller: productNameController,
                      decoration: InputDecoration(
                        hintText: "Enter product Name",
                        hintStyle: TextStyle(color: Color.fromARGB(0, 0, 0, 1)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 6, 3, 193))),
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
                            color: Color.fromARGB(255, 6, 3, 193),
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (value!.isNotEmpty) {
                          return null;
                        } else {
                          return "Enter product name";
                        }
                      }),

                  const SizedBox(height: 20),

                  /////////////////////////////////////////////
                  //Enter product price

                  const Text(" Enter Product Price ",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w500)),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                      controller: productPrice,
                      decoration: InputDecoration(
                        hintText: "Product Price ",
                        hintStyle: TextStyle(color: Color.fromARGB(0, 0, 0, 1)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 6, 3, 193))),
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
                            color: Color.fromARGB(255, 6, 3, 193),
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (value!.isNotEmpty) {
                          return null;
                        } else {
                          return "Enter Product Price ";
                        }
                      }),

                  const SizedBox(height: 30),

                  ElevatedButton(
                      onPressed: () {
                        bool validate = formkey.currentState!.validate();

                        if (validate) {
                          // to do the nagivation to the next Page
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (_) => DisplayData()),
                          );

                          // To Add the data to the product model class onPressing the button
                          var obj = ProductModel(
                            productImg: productImage.text.trim(),
                            productName: productNameController.text.trim(),
                            productPrice: productPrice.text.trim(),
                            productQuantity: 0,
                            isFavourite: false,
                          );

                          // Also informing the provider class as we are providing it this

                          Provider.of<ProductController>(context, listen: false)
                              .addProductData(obj);
                        }
                      },
                      child: Text("Submit",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w600)))
                ]))));
  }
}
