import 'package:flutter/material.dart';

class PostAdsScreen extends StatelessWidget {
  const PostAdsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Center(
        child: Text("অ্যাড পোস্ট করুন"),
      ),
    );
  }
}
