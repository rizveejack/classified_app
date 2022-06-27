import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class RatingStar extends StatefulWidget {
  const RatingStar({Key? key}) : super(key: key);

  @override
  State<RatingStar> createState() => _RatingStarState();
}

class _RatingStarState extends State<RatingStar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        5,
        (index) {
          return IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            icon: Icon(Icons.star),
          );
        },
      ),
    );
  }
}
