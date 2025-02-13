import 'package:flutter/material.dart';
import 'package:flutter_providerr_assign2_1/view/WishList.dart';
import 'package:provider/provider.dart';

import '../controllers/ProductController.dart';
import '../controllers/WishListController.dart';

class Showproductdetails extends StatefulWidget {
  const Showproductdetails({super.key});

  @override
  State<Showproductdetails> createState() => _ShowproductdetailsState();
}

class _ShowproductdetailsState extends State<Showproductdetails> {
  @override
  Widget build(BuildContext context) {
    var objList = Provider.of<ProductController>(context, listen: false);
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Product details",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => Wishlist()),
                );
              },
              child: const Icon(
                Icons.favorite,
                color: Colors.pink,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
          ],
          backgroundColor: Colors.blue.shade200,
   ),
        body: ListView.builder(
            itemCount: objList.productModelObjList.length,
            itemBuilder: (context, index) {
              return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(children: [
                    const SizedBox(height: 10),
                    Image.network(
                        objList.productModelObjList[index].productImg!),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          objList.productModelObjList[index].productName!,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "₹ ${objList.productModelObjList[index].productPrice!}",
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: [
                        const SizedBox(
                          width: 85,
                        ),
                        Consumer(builder: (context, provider, child) {
                          return GestureDetector(
                            onTap: () {
                              Provider.of<ProductController>(context)
                                  .addToFavorite(index: index);
                              if (objList
                                  .productModelObjList[index].isFavorite!) {
                                Provider.of<WishlistController>(context,
                                        listen: false)
                                    .addtowishlist(
                                        obj:
                                            objList.productModelObjList[index]);
                              }
                            },
                            child: Icon(
                              (objList.productModelObjList[index].isFavorite!)
                                  ? Icons.favorite
                                  : Icons.favorite_border_rounded,
                              color: Colors.pink,
                            ),
                          );
                        }),
                        const SizedBox(
                          width: 80,
                        ),
                        GestureDetector(
                          onTap: () {
                            Provider.of<ProductController>(context,
                                    listen: false)
                                .removeQuantity(index);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(),
                            ),
                            child: const Icon(Icons.remove),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Consumer(builder: (context, provider, child) {
                          return Text(
                            "${objList.productModelObjList[index].productQuantity}",
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          );
                        }),
                        const SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {
                            Provider.of<ProductController>(context,
                                    listen: false)
                                .addQuantity(index);
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
                  ]));
            }));
  }
}
