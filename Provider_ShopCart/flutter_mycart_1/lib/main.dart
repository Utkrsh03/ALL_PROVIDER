import 'package:flutter/material.dart';
import 'package:flutter_mycart_1/ApiiScreen.dart';
import 'package:flutter_mycart_1/ApiiScreen2.dart';
import 'package:flutter_mycart_1/views/MyCartScreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MainScreen());
  }
}
