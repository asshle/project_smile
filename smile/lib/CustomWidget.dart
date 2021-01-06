import 'package:flutter/material.dart';

class CustomWidgets
{
   static Widget textStyle({String text, double fontSize, Color color , FontWeight fontWeight})
  {
    return new Text
    (
      text,
      style:new TextStyle
      (
        fontWeight:fontWeight ,
        fontSize: fontSize ,
        color: color ==null ?
        Colors.grey:
        color,
      ),
    );
  }
   static Widget button ( void onPress() ,String text,{double paddingValue , Color color ,Color textColor ,double fontSize})
   {
     return new RaisedButton
     (
       onPressed: onPress,
       color: color != null ? color : Colors.blue[900] ,
       child: new Container
       (
         padding: new EdgeInsets.all(paddingValue != null ? paddingValue : paddingValue= 5  ),
         child:textStyle(text: text, fontSize: fontSize , fontWeight:FontWeight.normal , color: textColor) , 
       ),
     );
   }
  
}