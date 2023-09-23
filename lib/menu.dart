

// ignore_for_file: unused_import

import 'Package:flutter/material.dart';
import 'package:newapplication/page1.dart';
import 'package:newapplication/page4.dart';
import 'calculator.dart';
import 'page3.dart';
import 'page1.dart';
import 'home.dart';
import 'SplashScreen.dart';
class myDrawer extends StatelessWidget{
  //myDrawer(Container container);
  @override
  Widget build(BuildContext context) {
      return Drawer(
  width: MediaQuery.of(context).size.width/2+30,
  child: ListView(
    
    children: [
   
      Container(
        color: Color.fromARGB(255, 2, 130, 98),
        height: 170,
        child: DrawerHeader(
          decoration: BoxDecoration(
            color: Color.fromARGB(226, 231, 217, 217)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
               backgroundImage: AssetImage("assets/oo.jpg"),     
              ),
              SizedBox(width: 6,),
              Text("SAMSUNG",style: TextStyle(fontSize: 20,color: Colors.white70),
              ),
               SizedBox(width:5,),
            ],
          ),
        ),
      ),
      Divider(
        color: Color.fromARGB(255, 218, 5, 5),
        thickness:5,
      ),
      buildListTaile(context,"home",Icon(Icons.home)),
       SizedBox(width:5,),
      buildListTaile(context,"page",Icon(Icons.add)),
      SizedBox(width:5,),
      buildListTaile(context,"Calculator",Icon(Icons.calculate_rounded)),
      SizedBox(width:5,),
      buildListTaile(context,"CalculatorH",Icon(Icons.calculate_rounded)),
      SizedBox(width:5,),
      buildListTaile(context,"CV",Icon(Icons.phone_android)),
     
    ], 
  ),
      );
}
ListTile buildListTaile(ctx,  s, ob) {
  return ListTile(
    title: Text(s,style:TextStyle(fontSize: 19,color: Color.fromARGB(255, 1, 125, 16)),),
    tileColor: Color.fromARGB(255, 1, 71, 68),
    leading: ob,
    trailing: Icon(Icons.arrow_forward_ios),
    selectedTileColor: Color.fromARGB(170, 7, 2, 66),
    onTap: () {
      if(s=="home")
      Navigator.pop(ctx);
      else if(s=="page")
      Navigator.of(ctx).push(
        MaterialPageRoute(builder:(ctx)=> Mypage1()             
          )
          
        );
           else if(s=="Calculator")
      Navigator.of(ctx).push
      (MaterialPageRoute(builder:(ctx)=> CalculatorScreen()

          )
        );
          
          else if(s=="CalculatorH")
      Navigator.of(ctx).push(MaterialPageRoute(builder:(ctx)=>mypage3()
       
            
          )
        );
         else if(s=="CV")
      Navigator.of(ctx).push(MaterialPageRoute(builder:(ctx)=>CV()
       
            
          )
        );
        else if(s=="Osamah")
      Navigator.of(ctx).push(MaterialPageRoute(builder:(_) {
        return SplashScreen();
      }
      ),
      );
            } 
  );
}
}