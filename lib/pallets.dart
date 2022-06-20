import 'package:flutter/material.dart';

class Pallets {
  static double defaultPadding = 10.00;
  static double toolbarHeight = 80.00;
  static Color textPrimary = const Color(0xFF150C22);
  static Color textSecondery = const Color(0xFF76838A);
  static Color bgPrimary = const Color(0xFF10181E);
  static Color bdSecondery = const Color(0xFF272F35);
  static Color themSwatch = const Color(0xFFEBAB30);
  static LinearGradient homepageGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      bgPrimary,
      bdSecondery,
      bgPrimary,
    ],
  );
}
