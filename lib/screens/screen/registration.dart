import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:istrivala_app/model/body_page.dart';
import 'package:istrivala_app/model/userModel.dart';

import 'package:fluttertoast/fluttertoast.dart';

class Registration_Page extends StatefulWidget {
  @override
  // TODO: implement key
  Registration_Page({Key? key}) : super(key: key);
  @override
  _Registration_PageState createState() => _Registration_PageState();
}

class _Registration_PageState extends State<Registration_Page> {
  final _auth = FirebaseAuth.instance;
  //our fromkey
  final _fromkey = GlobalKey<FormState>();
  final firstNameEditingController = TextEditingController();
  final secoundNameEditingController = TextEditingController();
  final emailEditingController = TextEditingController();
  final passwordEditingController = TextEditingController();
  final confermPasswordEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final firstNameFild = TextFormField(
      autofocus: false,
      controller: firstNameEditingController,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        RegExp regex = new RegExp(r'^.{5,}$');
        if (value!.isEmpty) {
          return ('first name can not be empty');
        } else {
          if (!regex.hasMatch(value)) {
            return ('Enter valid name(min. 5 charaters)');
          }
        }
      },
      onSaved: (value) {
        firstNameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.account_circle_outlined),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "FirstName",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );
    final secoundNameFild = TextFormField(
      autofocus: false,
      controller: secoundNameEditingController,
      validator: (value) {
        if (value!.isEmpty) {
          return ('second name cant  be empty');
        }
        return null;
      },
      onSaved: (value) {
        secoundNameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.account_circle_outlined),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: " secoundName",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
    final emailFild = TextFormField(
      autofocus: false,
      controller: emailEditingController,
      validator: (value) {
        if (value!.isEmpty) {
          return ("Please Enter Your Email");
        }

        //reg expression for email validation
        if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+[a-z]").hasMatch(value)) {
          return ("Please Enter Valide Email");
        }
        return null;
      },
      onSaved: (value) {
        emailEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.email),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "EMAIL",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
    final passwordFild = TextFormField(
      autofocus: false,
      obscureText: true,
      controller: passwordEditingController,
      validator: (value) {
        RegExp regex = new RegExp(r'^.{6,}$');
        if (value!.isEmpty) {
          return ('Please enter password');
        } else {
          if (!regex.hasMatch(value)) {
            return 'Enter valid password(min. 6 charaters)';
          }
          return null;
        }
      },
      onSaved: (value) {
        passwordEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "  Password",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );
    final confirmPasswordFild = TextFormField(
      obscureText: true,
      autofocus: false,
      controller: confermPasswordEditingController,
      validator: (value) {
        if (confermPasswordEditingController.text !=
            passwordEditingController.text) {
          return ("password dont match");
        }
        return null;
      },
      onSaved: (value) {
        confermPasswordEditingController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Conferm Password",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );
    final singUpButton = Material(
      elevation: 5,
      color: Colors.deepPurpleAccent,
      borderRadius: BorderRadiusDirectional.circular(30),
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          signUp(emailEditingController.text, passwordEditingController.text);
        },
        child: Text(
          "SingUp",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );

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
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Form(
                  key: _fromkey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
//                    SizedBox(
//                      height: 200,
//                      child: Image.asset(
//                        "logo2.jpg",
//                        fit: BoxFit.contain,
//                      ),
//                    ),
                      firstNameFild,
                      SizedBox(height: 25),
                      secoundNameFild,
                      SizedBox(height: 35),
                      emailFild,
                      SizedBox(height: 25),
                      passwordFild,
                      SizedBox(height: 25),
                      confirmPasswordFild,
                      SizedBox(height: 35),
                      singUpButton,
                      SizedBox(height: 15),
                    ],
                  )),
            ),
          ),
        ),
      ),
    );
  }

  void signUp(String email, String password) async {
    if (_fromkey.currentState!.validate()) ;
    {
      await _auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) => {postDetailsToFirestore()})
          .catchError((e) {
        Fluttertoast.showToast(msg: e!.message);
      });
    }
  }

  postDetailsToFirestore() async {
    //calling firestore
    //calling userModel
    //sending this value
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user = _auth.currentUser;
    UserModel userModel = UserModel();
    //writing allvaluse
    userModel.email = user!.email;
    userModel.uid = user.uid;
    userModel.firstName = firstNameEditingController.text;
    userModel.secondName = secoundNameEditingController.text;
    await firebaseFirestore
        .collection("user")
        .doc(user.uid)
        .set(userModel.toMap());
    Fluttertoast.showToast(msg: "acount created successfully.");
//    Navigator.pushNamed(
//      context,
//      Body_page(),
    //);
//    Navigator.pushAndRemoveUntil((context),
//        MaterialPageRoute(builder: (context) => Home_Page()), (route) => false);
  }
}
