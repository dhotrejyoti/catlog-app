import 'package:flutter/material.dart';
import 'package:istrivala_app/screens/screen/products.dart';

class ProductTileWithImage extends StatelessWidget {
  const ProductTileWithImage({Key? key, required this.product})
      : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Aristocratice Hand Bag",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            product.title,
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          //SizedBox(height: 6),
          Row(children: <Widget>[
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                      text: "price\n",
                      style: TextStyle(color: Colors.white, fontSize: 14)),
                  TextSpan(
                      text: "\$${product.price}",
                      style: Theme.of(context).textTheme.headline6?.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            // SizedBox(
            //   width: 80,
            // ),
            Expanded(
              child: SizedBox(
                height: 150,
                width: 250,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Hero(
                    tag: "${product.id}",
                    child: SizedBox(
                      height: 150,
                      width: 200,
                      child: Image.asset(
                        product.image,
//                    fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
