import 'package:flutter/material.dart';
import 'package:my/welcome_screen.dart';



void main(){
  // ignore: prefer_const_constructors
  runApp(MyApp());
}




class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: welcomeScreen(),
    ); 
  }
}