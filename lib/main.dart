// ignore_for_file: prefer_const_constructors

import 'package:classified_app/pallets.dart';
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
        appBarTheme: AppBarTheme(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          titleTextStyle: TextStyle(
            color: Theme.of(context).textTheme.bodyText1!.color,
          ),
          iconTheme: IconThemeData(
              color: Theme.of(context).textTheme.bodyText1!.color),
        ),
        fontFamily: "kalpurush",
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
          headline4:
              TextStyle(fontFamily: "Alinur", color: Pallets.textPrimary),
          headline5:
              TextStyle(fontFamily: "Alinur", color: Pallets.textPrimary),
          bodyText2: TextStyle(fontSize: 17.00, color: Pallets.textPrimary),
        ),
      ),
      home: IndexPage(),
    );
  }
}
