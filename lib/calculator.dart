
import 'dart:convert';

import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String _output = '';
  String results='';
 
  void _buttonPressed(String buttonnum) {
    setState(() {
      if (buttonnum == '=') {
        results = _calculateResult();
        _output='';
      } else if (buttonnum == 'C') {
        _output = '';
        results='';
      }
       else if (buttonnum == 'c1') {
        _output=_output.substring(0,_output.length-1);
       }
        else if (_output==''&& (buttonnum=='+'||buttonnum=='-'||buttonnum=='*'||buttonnum=='/'||buttonnum=='%')) {
        _output=results+buttonnum;
       }

       else {
        _output += buttonnum;
        
       
      }
    });
  }

  String _calculateResult() {
    try {
      // استخدم eval() لحساب التعبير الرياضي المدخل
      var result = eval(_output);
      
      return result.toString();
      
    } catch (e) {
      return 'Error';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(height:3,),


          Container(
            decoration: BoxDecoration(
               border: Border.all(color: Colors.black87),
               color: Color.fromARGB(137, 57, 170, 168),
              borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            margin: EdgeInsets.only(left: 10,right: 10),
           
            child: Row(
              children: [
                Expanded(
                
                    child: Container(
                    
                      margin: EdgeInsets.only(top: 1,bottom: 5,left: 10,right: 10),
                      child: TextField(
                         textAlign: TextAlign.center,
                         decoration: InputDecoration(
                           // enabled:false,
                           
                       
                            // border:OutlineInputBorder(
                            //   borderSide: BorderSide( color: Color.fromARGB(137, 57, 170, 168), )
                              
                            //   ),
                        
                         ),
                       controller: TextEditingController(text:  _output),
                        style: TextStyle(fontSize: 24.0,color: Color.fromARGB(255, 0, 19, 27)),
                      ),
                      
                    ),
                
                ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: ElevatedButton(onPressed: () {
                                    _buttonPressed('c1');
                                  
                                }, child:  Icon(Icons.backspace_rounded),),
                  ),
              ],
            ),
          ),
        SizedBox(height:3,),
          //++++++++++++++++++++++++++++++++++++++++++
           Expanded(
      
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black87),
               color: Color.fromARGB(137, 57, 170, 168),
              borderRadius: BorderRadius.all(Radius.circular(10))
            ),
                height: 20,
                
                margin: EdgeInsets.only(top:0,left: 10,right: 10),
                child: TextField(
                   textAlign: TextAlign.center,
                   decoration: InputDecoration(
                      enabled:false,
                 
                      // border:OutlineInputBorder(
                      //   borderSide: BorderSide(color: Colors.black26)
                        
                      //   ),
                  
                   ),
                   
                 controller: TextEditingController(text: results),
                  style: TextStyle(fontSize: 24.0,color: Color.fromARGB(255, 0, 19, 27)),
                ),
              ),
              
          
          ),
          SizedBox(height:2,),
          
         //------------------------------------------------------------
          Container(
            height: 565,
            margin: EdgeInsets.only(top:0,bottom:1,left: 10,right: 10),
            child: Column(
              children: [
                // صفوف الأزرار
                Row(
                  children: [
                    _buttonNum('7'),
                    _buttonNum('8'),
                    _buttonNum('9'),
                    _buttonNum('/'),
                  ],
                ),
                Row(
                  children: [
                    _buttonNum('4'),
                    _buttonNum('5'),
                    _buttonNum('6'),
                    _buttonNum('*'),
                  ],
                ),
                Row(
                  children: [
                    _buttonNum('1'),
                    _buttonNum('2'),
                    _buttonNum('3'),
                    _buttonNum('-'),
                  ],
                ),
                Row(
                  children: [
                    _buttonNum('.'),
                    _buttonNum('0'),
                    _buttonNum('00'),
                    _buttonNum('+'),
                  ],
                ),
                 Row(
                  children: [
                   
                    
                    _buttonNum('C'),
                    _buttonNum('%'),
                    _buttonNum('='),
                   
                  ],
                ),
                 
              ],
            ),
          ),
        ],
      ),
    );
  }

   _buttonNum(String buttonNum) {
    return Expanded(
      
      child: Container(
       // margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 28, 145, 145),
            border: Border.all(color:Colors.black,width:1),
            borderRadius: BorderRadius.all(Radius.circular(3))
        )
        ,
       // margin: EdgeInsets.only(bottom: 100),
      
        child: TextButton(
          onPressed: () {
            _buttonPressed(buttonNum);
           
          },
          child: Text(
            buttonNum,
            style: TextStyle(fontSize: 24.0,color: Color.fromARGB(255, 0, 2, 3)),

          ),
        ),
      ),
    );
  }
}

// دالة لحساب التعبير الرياضي المدخل
 eval(String expression) {
  return ExpressionEvaluator().eval(expression);
}

class ExpressionEvaluator {
  static  List<String> _operators = ['+', '-', '*', '/','%'];

  dynamic eval(String expression) {
    expression = expression.replaceAll(' ', '');
    for (var operator in _operators) {
      if (expression.contains(operator)) {
        var parts = expression.split(operator);
      
        var left = eval(parts[0]);
        var right = eval(parts[1]);
        switch (operator) {
          case '+':
            return left + right;
          case '-':
            return left - right;
          case '*':
            return left * right;
          case '/':
            return left / right;
            case '%':
            return left % right;
            
        }
      }
    }

    return double.parse(expression);
  }
}