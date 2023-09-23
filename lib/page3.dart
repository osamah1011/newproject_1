import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mypage3 extends StatelessWidget {
  const mypage3({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController n1=TextEditingController();
    TextEditingController n2=TextEditingController();
    TextEditingController r=TextEditingController();
    return Scaffold(
      appBar: AppBar(),
      body: ListView( 
        children: [


          SizedBox(height: 20,),
          calcu( "input number 1","data", Color.fromARGB(255, 197, 188, 224),n1),
           calcu( "input number 2","data", Color.fromARGB(255, 18, 167, 113),n2),
            calcu( " res","data", Color.fromARGB(255, 86, 219, 94),r),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                opertion(r, n1, n2,"sum",(){
                r.text=(int.parse(n1.text) + int.parse(n2.text)).toString();
              },),
             
                opertion(r, n1, n2,"sub",() {
                r.text=(int.parse(n1.text) - int.parse(n2.text)).toString();
              },),
                 opertion(r, n1, n2,"div",() {
                r.text=((int.parse(n2.text)!=0)?
                (int.parse(n1.text) / int.parse(n2.text)):"لايمكن القسمة").toString();
              },),
                  opertion(r, n1, n2,"mul",() {
                r.text=(int.parse(n1.text) * int.parse(n2.text)).toString();
              },),
              
              ],
            ),
        ],
      ),
    );
  }

  
//_______________________________OPERTION___________________________________________
  Padding opertion(TextEditingController r, TextEditingController n1,
   TextEditingController n2,str,fun) {
    return Padding(
      padding: const EdgeInsets.all(8.0),         
             child: ElevatedButton(onPressed: fun,
               child: Text(str,style: TextStyle(color: Color.fromARGB(255, 237, 233, 233)
               ),
               )
               ),
    );
  }


//_________________________________PADDING___________________________________
  Padding calcu(hin,lbl,fill,controller) {
    return Padding(
          padding: const EdgeInsets.all(8.0),
          child: CupertinoTextField(
            controller: controller,
            textAlign: TextAlign.center,
           /* decoration:InputDecoration(
             labelText:lbl, 
              hintText:hin, 
              fillColor:fill,
              filled: true,
             // labelStyle: TextStyle(color: Colors.amber,
             // hintTextDirection:TextDirection.rtl, 
              border: OutlineInputBorder(
                borderRadius:
                 BorderRadius.all(Radius.circular(20),
                 ),
                 borderSide: BorderSide(
                  color: Color.fromARGB(255, 137, 245, 5),
                  width: 20,
                  style: BorderStyle.solid,
                  )
                 )
                 )*/
              ),
            );
  }
}