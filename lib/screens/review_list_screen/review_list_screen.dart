import 'package:flutter/material.dart';

class ReviewListScreen extends StatefulWidget {
  const ReviewListScreen({Key? key}) : super(key: key);

  @override
  State<ReviewListScreen> createState() => _ReviewListScreenState();
}

class _ReviewListScreenState extends State<ReviewListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Center(
        child: Text("All product review will show here"),
      ),
    );
  }
}
