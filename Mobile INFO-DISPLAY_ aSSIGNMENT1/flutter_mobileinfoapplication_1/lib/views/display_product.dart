import 'package:flutter/material.dart';
import 'package:flutter_mobileinfoapplication_1/controller/product_controller.dart';
import 'package:flutter_mobileinfoapplication_1/views/get_product.dart';
import 'package:provider/provider.dart';

class DisplayData extends StatefulWidget {
  const DisplayData({super.key});

  @override
  State<DisplayData> createState() => _DisplayDataState();
}

class _DisplayDataState extends State<DisplayData> {
  @override
  Widget build(BuildContext context) {
    var prodObj = Provider.of<ProductController>(context).productmodelobj1;
    return Scaffold(
        appBar: AppBar(
            title: Text("Show Details",
                style: TextStyle(fontWeight: FontWeight.bold))),
        body: Center(
            child: Column(children: [
          const SizedBox(height: 20),
          Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.14),
                    offset: Offset(2, 5),
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Column(children: [
                Image.network(prodObj!.productImg!),
                Text(
                  prodObj.productName!,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "₹ ${prodObj.productPrice!}",
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ])),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(10),
            width: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.14),
                  blurRadius: 15,
                ),
              ],
            ),
            child: Row(
              children: [
                Consumer(builder: (context, provider, child) {
                  return GestureDetector(
                    onTap: () {
                      Provider.of<ProductController>(context, listen: false)
                          .isToggle();
                    },
                    child: Icon(
                      prodObj.isFavourite
                          ? Icons.favorite
                          : Icons.favorite_border_rounded,
                      color: Colors.pink,
                    ),
                  );
                }),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    var prodQuantity = prodObj.productQuantity;
                    Provider.of<ProductController>(context, listen: false)
                        .removeQuantity(prodQuantity!);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                    ),
                    child: const Icon(Icons.remove),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Consumer(builder: (context, provider, child) {
                  return Text(
                    "${prodObj.productQuantity}",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 17),
                  );
                }),
                const SizedBox(
                  width: 8,
                ),
                GestureDetector(
                  onTap: () {
                    Provider.of<ProductController>(context, listen: false)
                        .addQuantity();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                    ),
                    child: const Icon(Icons.add),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => GetProduct()),
                );
              },
              child: Text("Backbuttom"))
        ])));
  }
}
