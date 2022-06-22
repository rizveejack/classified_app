import 'package:flutter/material.dart';

class SingleShopScreen extends StatelessWidget {
  const SingleShopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Center(
        child: Text("Single shop screen"),
      ),
    );
  }
}
