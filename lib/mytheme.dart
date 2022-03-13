import 'package:flutter/material.dart';

class MyTheme{
  static Color colorgold=Color.fromARGB(255, 36,36,36);
  static var colorblack=Color.fromARGB(24, 24, 24, 24);
static final ThemeData LightTheme=ThemeData(
  primaryColor:colorgold ,
  scaffoldBackgroundColor: Colors.transparent,
  appBarTheme: AppBarTheme(backgroundColor: Colors.transparent,elevation: 0),
  textTheme: TextTheme(
    headline1: TextStyle(
      fontSize: 29,
      fontWeight: FontWeight.bold,
      color:Colors.black,
    ),
    subtitle1: TextStyle(
      fontSize: 25,
      color: Colors.black,
    )
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    selectedItemColor: Colors.black,
    unselectedItemColor: Colors.white,

  )



);
static final ThemeData DarkTheme=ThemeData(

);

}