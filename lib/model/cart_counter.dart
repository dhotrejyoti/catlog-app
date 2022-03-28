import 'package:flutter/material.dart';

class CartCounter extends StatefulWidget {
  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 0;

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      SizedBox(
        child: Container(
            height: 39,
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Colors.grey),
            child: Align(
              alignment: Alignment.topCenter,
              child: Row(children: [
                numOfItems != 0
                    ? new IconButton(
                        icon: new Icon(Icons.remove),
                        onPressed: () => setState(() => numOfItems--),
                      )
                    : new Container(),
                new Text(
                  numOfItems.toString(),
                  style: TextStyle(fontSize: 20),
                ),
                new IconButton(
                    icon: new Icon(Icons.add),
                    onPressed: () => setState(() => numOfItems++))
              ]),
            )),
      ),
    ]);
  }
}
