// import 'package:flutter/material.dart';
// import 'package:istrivala_app/screens/login_page.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: "LOGIN_PAGE",
//         theme: ThemeData(primarySwatch: Colors.deepPurple),
//         home: LoginPage());
//   }
// }
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:istrivala_app/screens/screen/product.dart';
import 'firebase_options.dart';

import 'package:istrivala_app/screens/screen/loginPage.dart';

import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    //options: DefaultFirebaseOptions.currentPlatform,
    // Replace with actual values
    options: FirebaseOptions(
      apiKey: "AIzaSyAnN1ICh5EFSJcedRRYEGso4_teUiWIrlA",
      appId: "XXX",
      messagingSenderId: "XXX",
      projectId: "istrivalaapp",
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //final Future<FirebaseApp> _initialazation = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
//    return FutureBuilder(
//        future: _initialazation,
//        builder: (context, snapShot) {
//          //check for error
//          if (snapShot.hasError) {
//            print("Something went wrong");
//          }
//          if (snapShot.connectionState == ConnectionState.waiting) {
//            return Center(child: CircularProgressIndicator());
//          }
    return MaterialApp(
      title: "Flutter Firebase ",
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: LoginPage(),
    );
  }
  //);
}
