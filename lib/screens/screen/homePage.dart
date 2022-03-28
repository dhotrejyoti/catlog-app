// // ignore: file_names
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:istrivala_app/model/userModel.dart';

// class Home_Page extends StatefulWidget {
//   Home_Page({Key? key}) : super(key: key);
//   @override
//   _Home_PageState createState() => _Home_PageState();
// }

// class _Home_PageState extends State<Home_Page> {
//   User? user = FirebaseAuth.instance.currentUser;
//   UserModel loggedInUser = UserModel();
//   @override
//   void initState() {
//     super.initState();
//     FirebaseFirestore.instance
//         .collection("user")
//         .doc(user!.uid)
//         .get()
//         .then((value) {
//       this.loggedInUser = UserModel.fromMap(value.data());
//       setState(() {});
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Welcome"),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Padding(
//           padding: EdgeInsets.all(20.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: <Widget>[
//               SizedBox(
//                 height: 100,
//               ),
// //              Image.asset(
// //                "logo2.jpg",
// //                fit: BoxFit.contain,
// //              ),
//               Text(
//                 "Welcome Back",
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//               ),
//               Text("${loggedInUser.firstName} ${loggedInUser.secondName}",
//                   style: TextStyle(
//                       fontSize: 20,
//                       color: Colors.black,
//                       fontWeight: FontWeight.w600)),

//               Text("${loggedInUser.email}",
//                   style: TextStyle(
//                     fontSize: 20,
//                     color: Colors.black,
//                     fontWeight: FontWeight.w600,
//                   )),

//               SizedBox(height: 20),
//               ActionChip(
//                   label: Text("LogOut"),
//                   onPressed: () {
//                     logout(BuildContext, context);
//                     //ogout();
//                   }),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Future<void> logout(BuildContext, context) async {
//     await FirebaseAuth.instance.signOut();
//     // Navigator.of(context)
//     //     .pushReplacement(MaterialPageRoute(builder: (context) => LoginPage()));
//   }
// }
