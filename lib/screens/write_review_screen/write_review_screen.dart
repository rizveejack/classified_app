import 'package:flutter/material.dart';

class WriteReviewScreen extends StatefulWidget {
  const WriteReviewScreen({Key? key}) : super(key: key);

  @override
  State<WriteReviewScreen> createState() => _WriteReviewScreenState();
}

class _WriteReviewScreenState extends State<WriteReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Center(
        child: Text("Write Your Review"),
      ),
    );
  }
}
