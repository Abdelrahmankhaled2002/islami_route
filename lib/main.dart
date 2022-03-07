import 'package:flutter/material.dart';
import 'package:islami/homepage.dart';

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
        HomePage.route_name:(context)=>HomePage()
        },
      initialRoute: HomePage.route_name,
    );
  }
}
