import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Text(
        "বাংলা ডেমো টেক্সট",
        style: TextStyle(
          fontFamily: "Alinur",
          fontSize: 35,
          fontWeight: FontWeight.bold,
        ),
      ),
    ));
  }
}
