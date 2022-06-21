import 'package:flutter/material.dart';

import 'product_image_carosel.dart';

class SingleAddScreen extends StatelessWidget {
  const SingleAddScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProductImageCarosel(),
          ],
        ),
      ),
    );
  }
}
