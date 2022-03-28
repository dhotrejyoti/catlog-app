import 'package:flutter/material.dart';
import 'package:istrivala_app/screens/screen/products.dart';

class Description extends StatelessWidget {
  const Description({
    Key? key,
    required this.product,
  }) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        product.description,
        style: TextStyle(
            height: 1.5,
            color: Colors.black,
            fontSize: 14,
            fontStyle: FontStyle.italic),
      ),
    );
  }
}
