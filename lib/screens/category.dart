import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categorise = ["Hand bag", "Jwellary", "Dresses", "Footwear"];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        // Padding(
        //   padding: const EdgeInsets.symmetric(vertical: 10.0),
        ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: categorise.length,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ]),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 08.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categorise[index],
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: selectedIndex == index ? Colors.black : Colors.black45,
              ),
            ),
            Container(
              decoration: BoxDecoration(color: Colors.amberAccent),
              height: 20,

              //color: selectedIndex == index ? Colors.black : Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}
