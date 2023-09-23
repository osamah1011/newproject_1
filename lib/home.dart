// ignore_for_file: unused_import
import 'Package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '/menu.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
   Widget build(BuildContext context) {
     return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
    );
  }
   }
  
  
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
 body: Center(
  child: ListView(
    children:[
       SizedBox(height: 29,),

       Transform(transform: Matrix4.rotationZ(0.2),
          child:Container(
      
       width: MediaQuery.of(context).size.width,
   
         height: MediaQuery.of(context).size.width/7,
           padding: EdgeInsets.only(bottom: 90,top: 90,),
          color: Color.fromARGB(255, 164, 31, 31),
          
        ),
         ),

        SizedBox(height: 200,),

         Transform(transform: Matrix4.rotationZ(0.2),
          child:Container(
        width: MediaQuery.of(context).size.width,
         height: MediaQuery.of(context).size.width/6,
           padding: EdgeInsets.only(bottom: 90,top: 90,left:20,right: 20),
          color: Color.fromARGB(255, 164, 31, 31),
          
        ),
         ),
      
      SizedBox(height: 29,),


      Container(
      
       width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(60),

        child:Container(
          color: Color.fromARGB(255, 164, 31, 31),
          padding: EdgeInsets.all(50),

          child: Container(
            color: Color.fromARGB(255, 110, 193, 21),
          padding: EdgeInsets.all(70),

          child: Container(
            color: Color.fromARGB(255, 114, 6, 124),
          padding: EdgeInsets.all(50),

           child: Container(
            color: Color.fromARGB(255, 2, 92, 11),
             padding: EdgeInsets.all(10),

               child: Container(
          color: Color.fromARGB(255, 104, 58, 145),
             padding: EdgeInsets.all(0),

          ),
          ),
          ),
        ),
        ),
      ),
       ],
      ),
      ),
  );
 
    
  
  }
}
