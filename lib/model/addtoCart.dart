import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/screen/products.dart';
import 'istrivala_app/screen/products.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    Key? key,
    required this.product,
  }) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                height: 40,
                width: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                    color: product.color,
                  ),
                ),
                child: IconButton(
                  icon: Icon(
                    Icons.add_shopping_cart,
                    color: product.color,
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: SizedBox(
                  height: 37,
                  width: 45,
                  child: FlatButton(
                    height: 44,
                    minWidth: 50.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18)),
                    color: product.color,
                    onPressed: () {
                      print("Your Product is added  to the cart ");
                      Navigator.pop(context, "/");
                    },
                    child: Text(
                      "Buy Now".toUpperCase(),
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ]));
  }
}
