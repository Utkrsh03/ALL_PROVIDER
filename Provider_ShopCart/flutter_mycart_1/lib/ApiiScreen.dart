import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class MainAPIscreen extends StatefulWidget {
  const MainAPIscreen({super.key});

  @override
  State<MainAPIscreen> createState() => _State();
}

class _State extends State<MainAPIscreen> {
  // Map product map

  Map productMap = {};

  @override
  void initState() {
    getProductData();
    super.initState();
  }

  void getProductData() async {
    Uri Raj = Uri.parse('https://dummyjson.com/products');

    http.Response response = await http.get(Raj);
    Map<String, dynamic> responseData = json.decode(response.body);

    setState(() {
      productMap = responseData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("hello")), body: Validatemap());
  }

  // ignore: non_constant_identifier_names
  Validatemap() {
    if (productMap.isNotEmpty) {
      return Container(
          child: Column(children: [
        Text(
          productMap['title'],
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          productMap['description'],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            productMap['category'],
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          ),
          Text(
            '₹ ${productMap['price'] ?? "Default Name"}',
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
        ])
      ]));
    } else {
      return const Center(
        child: Text(
          'Wait for load data',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w600,
          ),
        ),
      );
    }
  }
}
