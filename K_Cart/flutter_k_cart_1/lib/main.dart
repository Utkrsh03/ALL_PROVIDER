import 'package:flutter/material.dart';
import 'package:flutter_k_cart_1/controllers/all_to_cart_controller.dart';
import 'package:flutter_k_cart_1/controllers/get_all_product_controller.dart';
import 'package:flutter_k_cart_1/view/home_screen/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
              create: (context) => GetAllProductController()),
          ChangeNotifierProvider(create: (context) => AddToCartController()),
        ],
        child:
            MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen()));
  }
}
