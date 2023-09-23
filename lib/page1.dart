// ignore_for_file: unused_import



import 'Package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:newapplication/home.dart';
import 'SplashScreen.dart';
import 'menu.dart';

class Mypage1 extends StatefulWidget {
   Mypage1({super.key});

  @override
  State<Mypage1> createState() => _MyWidgetState();
}


class _MyWidgetState extends State<Mypage1> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
       appBar: AppBar(),
      body: Stack(
        children:<Widget>[

          Positioned(
            top: 3,
            left: 3,
            right: 3,
            child: Container(
              width:MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
               color: Color.fromARGB(255, 180, 5, 107),
                borderRadius: BorderRadius.only(
                  bottomRight:Radius.circular(200),
                  topRight:Radius.circular(10),
                  topLeft: Radius.circular(5)
                  ),
              ),
              height: 190,
            ),
          ),
        
         Positioned(
           top:290,
            bottom: 270,
            left:100,
            right:100,
        
              child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
           CircleAvatar(
                radius: 50.0,     
              ),
            SizedBox(height:15,width: 10),
              Text("SAMSUNG",style: TextStyle(fontSize: 10,color: Color.fromARGB(179, 133, 14, 14)),
            ),
            ],
              ),
           
          ),


         Positioned(
            bottom: 3,
            left: 3,
           // right: 3,
            child: Container(
              width:MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 180, 5, 107),
                borderRadius: BorderRadius.only(
                  topLeft:Radius.circular(200),
                  bottomRight:Radius.circular(10)
                  ),
              ),
              height: 190,

            ),
          ),
  
        ],
      ) 
    );
}
}