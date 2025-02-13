import 'package:flutter/material.dart';
import 'package:flutter_mobileinfoapplication_1/controller/product_controller.dart';
import 'package:flutter_mobileinfoapplication_1/views/get_product.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) {
          return ProductController();
        },
        child:
            MaterialApp(debugShowCheckedModeBanner: false, home: GetProduct()));
  }
}
