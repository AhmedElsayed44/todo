import 'package:flutter/material.dart';
import 'package:todo/My_themedata.dart';
import 'package:todo/home/homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Mythemedata.lighttheme,



      routes: {
        homescreen.routeName:(buildcontext)=>homescreen(),
      },
      initialRoute: homescreen.routeName,
    );



  }



}