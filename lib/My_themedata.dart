import 'package:flutter/material.dart';

class Mythemedata {
  static const Color lightscaffoldbackgraund=
  Color.fromARGB(255,223,236,219);
  static final ThemeData lighttheme=
      ThemeData(
        primarySwatch: Colors.blue,
          scaffoldBackgroundColor: lightscaffoldbackgraund,
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 18,
            color: Colors.black,

          ),
              headline2: TextStyle(
          fontSize: 28,
          color: Colors.black45,
        ),
          subtitle1: TextStyle(
            fontSize: 16,
            color: Colors.blue,
          )
        )
      );



}