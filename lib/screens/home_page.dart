import 'package:flutter/material.dart';
import 'package:istrivala_app/screens/screen/body.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);
  @override
  _Home_PageState createState() => _Home_PageState();
}

// ignore: camel_case_types
class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Welcome"),
          centerTitle: true,
        ),
        body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRgZqp-OBqsIMXrt8dIRO4CYzlAuX6DqUCUA&usqp=CAU"),
                    fit: BoxFit.cover)),
            padding: EdgeInsets.only(top: 50.0),
            child: Column(children: [
              Text(
                "Welcome Back To Catlog App",
                style: TextStyle(
                    color: Colors.black.withOpacity(0.8),
                    fontSize: 38.0,
                    height: 1.4,
                    fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 190),
              Container(
                height: 20,
                width: 30,
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(top: 20),
                child: ActionChip(
                  label: Text("NEXT"),
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Body()));

                    //do whatever you want when the user taps the chip
                  },
                  pressElevation: 15,
                ),
              )
            ])));

    // Column(
    //   mainAxisSize: MainAxisSize.max,
    //   mainAxisAlignment: MainAxisAlignment.spaceAround,
    //   crossAxisAlignment: CrossAxisAlignment.stretch,
    //   children: <Widget>[
    //   const SizedBox(
    //       height: 10,
    //       child: Text(
    //         "Welcome Back In Cartozzz",
    //         style: TextStyle(
    //             fontSize: 30,
    //             fontWeight: FontWeight.bold,
    //             fontStyle: FontStyle.italic),
    //       ),
    //     ),
    //     // Text(
    //   "Enjoy your shppoing ",
    //   style: TextStyle(
    //       fontSize: 20,
    //       color: Colors.black,
    //       fontWeight: FontWeight.w600),
    // ),
    // Text(
    //   "with meshhow",
    //   style: TextStyle(
    //       fontSize: 20,
    //       color: Colors.black,
    //       fontWeight: FontWeight.w600),
    // ),
  }
}
