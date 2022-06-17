import 'package:flutter/material.dart';

class ScreenHeading extends StatelessWidget {
  const ScreenHeading({
    Key? key,
    required this.iconColor,
    required this.title,
    required this.icon,
  }) : super(key: key);

  final Color iconColor;
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor,
          size: 40,
          shadows: const [
            Shadow(
              blurRadius: 9,
              color: Colors.black26,
            ),
          ],
        ),
        Text(
          title,
          style: TextStyle(
            fontFamily: Theme.of(context).textTheme.headline4?.fontFamily,
            fontSize: 30.00,
          ),
        ),
      ],
    );
  }
}
