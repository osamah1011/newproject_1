

import 'package:flutter/material.dart';
import 'package:newapplication/menu.dart';

class CV extends StatelessWidget {
  const CV({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children:<Widget>[
          
          Container(
              width: MediaQuery.of(context).size.width,
            
            color: Colors.black45,
            child: Positioned(
              top: 10,
             // left:0,
               right: 0,
              child: Column(
                children: [
                 
                ],
              ),
            ),
            
          ),
      
         
           Positioned(
              top: 0,
              left:250,
              
              //right:230,
              bottom:650,
              child: Container(
                width: 500,
                height: 20,
                color: Color.fromARGB(219, 49, 38, 38),
              ),
            ),
           
          Positioned(
             top:40,
              right:0,
              bottom:650,
              child: Row(
                children: [
                  Container(
                   // color: Colors.black26,
                    child: Align(
            alignment: Alignment.bottomRight,
            child:Text("dahjgfgfgta",style: TextStyle(backgroundColor:Color.fromARGB(214, 230, 12, 12) ),),
            
                  ),
                      ),
                      Container(
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child:Icon(Icons.abc_outlined),
                        ),
                      )
                ],
              ),
                
                    ),

           
           Positioned(
              top: 0,
              //left:0,
              right:230,
              bottom: 0,
              child: Container(
                width: 300,
                height: 100,
                color: Color.fromARGB(219, 42, 40, 40),
              ),
            ),

            Positioned(
              top: 20,
              left: 50,
              
              child:  CircleAvatar(
                    radius: 60,
                  ),
                  ),
                  
                   
             
          
           
       //data(162,2,Icon(Icons.abc_outlined),"Name:Osamah Mohammed"),
       info(200,"اللغات",Color.fromARGB(255, 98, 62, 240)),
       info(235,"العربية",null),
        bac(261,100),
       info(265,"الإنجليزية",null),
        bac(291,50),

         info(310,"المهاراة",Color.fromARGB(255, 98, 62, 240)),
       info(345,"Microsoft office",null),
        bac(375,20),
       info(385,"PHP",null),
        bac(412,10),
        info(423,"SEO",null),
        bac(450,50),
       


      
          
         
        ],
      ),
    );
  }

  Positioned bac(x,y) {
    return Positioned(
      top:x,
      left: y,
      right:240,
      child:Container(
        width: 203,
        height: 9,
        color: const Color.fromARGB(255, 198, 191, 169),
        )
    
     );
  }

  Positioned info(x,txt,Color) {
    return Positioned(
    top: x,
    left: 3,
    right:240,
    child: Container(
      width:200,
      decoration: BoxDecoration(
        borderRadius:BorderRadius.all(Radius.circular(10)),
        color: Color,
      ),
      
      alignment: Alignment.topRight,
      child: Text(txt),
     ),
     );
  }

  // Positioned data(x,y,ico,txt) {
  //   return Positioned(
  //    top: x,
  //    left:y,
  //    right:240,
    
  //    child:Row(
  //      children: [
  //       Container(
  //         color: Colors.amber,
  //          height: 30,
        
  //         child: Align(
          
  //         alignment: Alignment.topCenter,
  //         child:Text(txt) ,
          
  //              ),    
  //       ),
  //        Container(
  //        height: 30,
  //        width: 30,
  //        color: Color.fromARGB(255, 208, 204, 190),
  //        child: Align(
  //          alignment: Alignment.topCenter,
  //          child:ico,

  //        ),
  //  ),
 
    
   
  //      ],
  //    )
  //  );
  // }

  
  }