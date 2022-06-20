import 'package:flutter/material.dart';

class SingleAddScreen extends StatelessWidget {
  const SingleAddScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Center(
        child: Text("সিঙ্গেল অ্যাড পেজ"),
      ),
    );
  }
}
