import 'package:flutter/material.dart';

class RatingStar extends StatefulWidget {
  const RatingStar({Key? key}) : super(key: key);

  @override
  State<RatingStar> createState() => _RatingStarState();
}

class _RatingStarState extends State<RatingStar> {
  int _rating = 5;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        5,
        (index) {
          if (_rating > index) {
            return IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                setState(() {
                  _rating = index + 1;
                });
              },
              icon: Icon(Icons.star),
            );
          } else {
            return IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                setState(() {
                  _rating = index + 1;
                });
              },
              icon: Icon(Icons.star_outline),
            );
          }
        },
      ),
    );
  }
}
