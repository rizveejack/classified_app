import 'package:flutter/material.dart';

class Pallets {
  static double defaultPadding = 10.00;
  static double toolbarHeight = 80.00;
  static Color textPrimary = const Color(0xFF150C22);

  static LinearGradient homepageGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Colors.blue.shade800,
      Colors.blue.shade600,
      Colors.blue.shade400,
    ],
  );
}
