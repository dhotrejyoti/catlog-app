import 'package:flutter/material.dart';

import 'package:istrivala_app/screens/screen/products.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;
  const ItemCard({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
            elevation: 8,
            color: Colors.deepPurpleAccent,
            child: GestureDetector(
                onTap: () {
                  press();
                },
                child: Padding(
                  padding: EdgeInsets.only(
                      top: 5.0, left: 5.0, right: 5.0, bottom: 10.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Padding(
                      //   padding: const EdgeInsets.all(8.0),
                      //child:
                      Container(
                        height: 150,
                        width: 160,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            color: product.color,
                            borderRadius: BorderRadius.circular(10)),
                        child: Hero(
                            tag: "${product.id}",
                            child: Image.asset(
                              product.image,
                            )),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: Text(
                          product.title,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "\$${product.price}",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                ))));
  }
}

//we need ststful widget for our category
