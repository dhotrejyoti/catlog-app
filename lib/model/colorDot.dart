// ignore: file_names
import 'package:flutter/material.dart';

import 'package:istrivala_app/screens/screen/products.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key? key,
    required this.product,
  }) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 8.0,
        bottom: 8.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            children: <Widget>[
              Text("Color"),
              Row(
                children: <Widget>[
                  ColorDot(
                    color: Color(0xFF356C95),
                    isSelected: true,
                  ),
                  ColorDot(color: Color(0xFFF8C078)),
                  ColorDot(color: Color(0xFFA29898)),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RichText(
                  text: TextSpan(
                      style: TextStyle(color: Colors.black, fontSize: 19),
                      children: [
                    TextSpan(text: "Size\n"),
                    TextSpan(
                        text: "${product.size}cm",
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            ?.copyWith(fontWeight: FontWeight.bold))
                  ])),
            ],
          )
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDot({
    Key? key,
    required this.color,
    this.isSelected = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8.0, right: 8.0),
      padding: EdgeInsets.all(2.4),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: isSelected ? color : Colors.transparent,
          )),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
