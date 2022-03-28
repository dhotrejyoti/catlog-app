//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:istrivala_app/model/detail_Screen.dart';

import 'package:istrivala_app/screens/screen/products.dart';

import '../category.dart';
import 'item.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var press;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.red),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text("Woman",
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      ?.copyWith(fontWeight: FontWeight.bold)),
            ),
            //SizedBox(height: 20, child: Categories()),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: SizedBox(
                height: 270.0,
                child: GridView.builder(
                  itemCount: products.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.75,
                  ),
                  itemBuilder: (context, index) => ItemCard(
                    product: products[index],
                    press: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Detail_Screen(
                            product: products[index],
                          ),
                        )),
                  ),
                ),
              ),
            ))
          ],
        ));
  }
}
