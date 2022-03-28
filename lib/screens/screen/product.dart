//import 'package:flutter/material.dart';
//
//class ProductBox extends StatelessWidget {
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:istrivala_app/screens/screen/body.dart';

class ProductPage extends StatelessWidget {
  get svgPicture => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text("Shopping App",
          style: TextStyle(
              color: Colors.black, fontStyle: FontStyle.normal, fontSize: 19)),
      backgroundColor: Colors.amber,
      elevation: 7,
      leading: IconButton(
        icon: Icon(Icons.arrow_back, color: Colors.black),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.shopping_cart, color: Colors.black),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.search, color: Colors.black),
          onPressed: () {},
        ),
        SizedBox(width: 20),
      ],
    );
  }
}

//  ProductBox(
//      {required Key key,
//      required this.name,
//      required this.description,
//      required this.price,
//      required this.image})
//      : super(key: key);
//  final String name;
//  final String description;
//  final int price;
//  final String image;
//  Widget build(BuildContext context) {
//    return Container(
//        padding: EdgeInsets.all(2),
//        height: 120,
//        child: Card(
//            child: Row(
//                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                children: <Widget>[
//              Image.asset("assets/appimages/" + image),
//              Expanded(
//                  child: Container(
//                      padding: EdgeInsets.all(5),
//                      child: Column(
//                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                        children: <Widget>[
//                          Text(this.name,
//                              style: TextStyle(fontWeight: FontWeight.bold)),
//                          Text(this.description),
//                          Text("Price: " + this.price.toString()),
//                        ],
//                      )))
//            ])));
//  }
//}
