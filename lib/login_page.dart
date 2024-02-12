
import 'package:emailverf/home_page.dart';
import 'package:emailverf/servies/firebase_services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';

class Login_Page extends StatefulWidget {
  const Login_Page({super.key});

  @override
  State<Login_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "eneter mailid",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)
                    )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "enter password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)
                    )
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              SizedBox(
                  height: 45,
                  width: 350,
                  child: ElevatedButton(onPressed: () {},

                      style: ElevatedButton.styleFrom(
                        primary: Colors.black
                      ),
                      child: Text("Login",style: TextStyle(color: Colors.white),))),
              SizedBox(
                height: 15,
              ),
              
              Container(
                height: 45,
                width: 350,

                child: ElevatedButton.icon(onPressed: () async{

                  await firebaseServices().sigInWithGoogle();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home_Page()),
                  );




                },

                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.black,
                    ),
                    icon: FaIcon(FontAwesomeIcons.google,color: Colors.red,),
                  label: Text("Sign Up with Google"),
                   // child: Text("Sign up with google")
                ),
              )

            ],
          ),
        ),
      ),
    );
  }


}
