import 'package:flutter/material.dart';

class Appbartitle extends StatelessWidget {
  const Appbartitle({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text:
          TextSpan(text: "K-Cart", children: [TextSpan(text: "Devilary App")]),
    );
  }
}
