import 'package:firebase_auth/firebase_auth.dart';
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:istrivala_app/screens/home_page.dart';
import 'package:istrivala_app/screens/ragistration_page.dart';
//import 'package:istrivala_app/screens/screen/home_page.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  //firebase
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    //emailfild
    final emailFild = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
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
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.email, color: Colors.orange),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        label: Text(
          "Username",
          style: TextStyle(
              fontSize: 14,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
              color: Colors.orange),
        ),
        hintText: ("Enter User ID or Email"),
        hintStyle: TextStyle(
            fontSize: 13,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400,
            color: Colors.black45),
        //border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
    //passwordfild
    final passwordFild = TextFormField(
        obscureText: true,
        autofocus: false,
        controller: passwordController,
        validator: (value) {
          RegExp regex = new RegExp(r'^.{6,}$');
          if (value!.isEmpty) {
            return 'Please enter password';
          }
          if (!regex.hasMatch(value)) {
            return 'Enter valid password(min. 6 charaters)';
          }
        },
        onSaved: (value) {
          passwordController.text = value!;
        },
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.vpn_key, color: Colors.orange),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          label: Text(
            "Password",
            style: TextStyle(
                fontSize: 14,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold,
                color: Colors.orange),
          ),

          hintText: ("Enter Password"),
          hintStyle: TextStyle(
              fontSize: 13,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400,
              color: Colors.black45),
          // border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
        ));
    final loginButton = Material(
      elevation: 5,
      color: Colors.orange,
      borderRadius: BorderRadiusDirectional.circular(30),
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          signIn(emailController.text, passwordController.text);
        },
        child: Text(
          "Login",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.bottomRight,
          height: 600,
          width: 800,
          child: Card(
            elevation: 4,
            color: Colors.purpleAccent,
            shadowColor: Colors.black26,
            //margin: EdgeInsets.all(20),
            shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                    color: Color.fromARGB(255, 255, 65, 242), width: 1)),
            child: Container(
              height: 400,
              width: 370,
              child: Card(
                elevation: 8,
                shadowColor: Colors.pink,
                margin: EdgeInsets.all(20),
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.yellow, width: 1)),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
//                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
//                    SizedBox(
//                      height: 200,
//                      child: Image.asset(
//                        "logo2.jpg",
//                        fit: BoxFit.contain,
//                      ),
//                    ),
                        emailFild,
                        SizedBox(height: 20),
                        passwordFild,
                        SizedBox(height: 20),
                        loginButton,
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Don't have an account?"),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Registration_Page()));
                              },
                              child: Text(
                                "SignUp",
                                style: TextStyle(
                                    color: Colors.deepOrange,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

//login function
  void signIn(String email, String password) async {
    if (_formKey.currentState!.validate()) {
      await _auth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((uid) => {
                Fluttertoast.showToast(msg: "Login Successful"),
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => Home_Page())),
              })
          .catchError((e) {
        Fluttertoast.showToast(msg: e.message);
      });
    }
  }
}
