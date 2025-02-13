import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controllers/ProductController.dart';
import 'view/Get_product_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) {
          return ProductController();
        }),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: GetProductDetails(),
      ),
    );
  }
}
