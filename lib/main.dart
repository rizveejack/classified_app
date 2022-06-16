// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "classified_app",
      theme: ThemeData(
        primarySwatch: Colors.purple,
        fontFamily: "kalpurush",
        textTheme: TextTheme(
          headline1: TextStyle(fontFamily: "Alinur"),
        ),
      ),
      home: IndexPage(),
    );
  }
}
