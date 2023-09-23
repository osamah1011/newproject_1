
// ignore_for_file: unused_import

import 'Package:flutter/material.dart';
import 'package:newapplication/calculator.dart';

import 'menu.dart';
import 'home.dart';
void main(){
 runApp(MyAPP());
}
class MyAPP extends StatelessWidget {
  const MyAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: const Locale('ar'),
      home: Scaffold(
        appBar: AppBar(),
        body:MyHomePage(),
        drawer:myDrawer(),
        ),
  debugShowCheckedModeBanner: false,

 );
  }
}