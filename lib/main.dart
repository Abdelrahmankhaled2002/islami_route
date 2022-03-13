import 'package:flutter/material.dart';
import 'package:islami/home/homepage.dart';
import 'package:islami/mytheme.dart';
import 'package:islami/suradetails/suradetails.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Islami',
      routes: {
        HomePage.route_name:(context)=>HomePage(),
        SuraDetails.route_name:(context)=>SuraDetails(),
        },
      initialRoute: HomePage.route_name,
      theme:MyTheme.LightTheme,
      darkTheme: MyTheme.DarkTheme,
    );
  }
}
