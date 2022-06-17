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
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
          headline4: TextStyle(fontFamily: "Alinur"),
          headline5: TextStyle(fontFamily: "Alinur", color: Colors.black54),
          bodyText1: TextStyle(fontSize: 17.00),
          bodyText2: TextStyle(fontSize: 17.00),
        ),
      ),
      home: IndexPage(),
    );
  }
}
