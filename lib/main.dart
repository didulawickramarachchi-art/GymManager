import 'Screens/login_screen.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(GymApp());
}

class GymApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"Gym Manager",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home:LoginScreen()
    );
  }
}