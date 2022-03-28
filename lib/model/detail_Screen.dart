import 'package:flutter/material.dart';
import 'package:istrivala_app/screens/screen/products.dart';

import 'body_page.dart';

class Detail_Screen extends StatelessWidget {
  final Product product;

  const Detail_Screen({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body_page(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
        SizedBox(
          width: 10.0,
        )
      ],
    );
  }
}
