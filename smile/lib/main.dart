import 'package:flutter/material.dart';
import './initPage.dart';
void main() {
  //Entry point
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project Smile',
      home: new initPage(), // Initialisation Page
      debugShowCheckedModeBanner: true, // TODO: Set to false once out of debug mode
    );
  }
}


