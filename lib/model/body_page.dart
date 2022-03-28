//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:istrivala_app/model/addtoCart.dart';
import 'package:istrivala_app/model/description.dart';
import 'package:istrivala_app/model/productTileWithImage.dart';
import 'package:istrivala_app/screens/screen/products.dart';

import 'colorDot.dart';
import 'couterWithfav.dart';

class Body_page extends StatelessWidget {
  final Product product;

  const Body_page({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.20),
                  padding: EdgeInsets.only(top: 50, right: 10, left: 10),
                  height: 600,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      const SizedBox(height: 10),
                      ColorAndSize(product: product),
                      const SizedBox(height: 10),
                      Description(product: product),
                      SizedBox(height: 10),
                      const CounterWithFavBtn(),
                      const SizedBox(height: 10),
                      AddToCart(
                        product: product,
                      ),
                    ],
                  ),
                ),
                ProductTileWithImage(product: product)
              ],
            ),

//          )
          )
        ],
      ),
    );
  }
}
