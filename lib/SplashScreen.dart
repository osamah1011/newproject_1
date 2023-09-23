// ignore_for_file: override_on_non_overriding_member

import 'dart:async';

import 'Package:flutter/material.dart';
import 'menu.dart';
// ignore: unused_import
import 'home.dart';
// ignore: unused_import
import 'main.dart';
class SplashScreen extends StatefulWidget{
  static const id='splash';
  @override
 _SplashScreenState createState()=> _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{
   @override
   void initstate(){
    super.initState();
     Timer(Duration(seconds: 2),(){
    Navigator.of(context).push(MaterialPageRoute(builder:(_){
    return myDrawer();

}));
    });
   }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 161, 5, 138),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
          '    asset/oo.jpg',
          width: 200,
          height: 150,
            ),
          ),
          SizedBox(height: 20,),
          Text("ANDROID",
          style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 9, 1, 28),
          fontStyle: FontStyle.italic
          ),
          ),
          SizedBox(height: 20,),
          CircularProgressIndicator()
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );
  }
}