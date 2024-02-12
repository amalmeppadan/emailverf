
import 'package:emailverf/login_page.dart';
import 'package:emailverf/servies/firebase_services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(FirebaseAuth.instance.currentUser!.photoURL!),
              SizedBox(height: 8,),

              Text("username : ${FirebaseAuth.instance.currentUser?.displayName}",style: TextStyle(fontSize: 18),),
              SizedBox(
                height: 8,
              ),
              Text("email :${FirebaseAuth.instance.currentUser?.email}",style: TextStyle(fontSize: 18),),
              SizedBox(
                height: 20,
              ),


              ElevatedButton(onPressed: () async {
                await firebaseServices().signOut();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login_Page()),
                );

              }, child: Text("Signout"))

            ],
          ) ,
        ),
      ),
    );
  }
}
