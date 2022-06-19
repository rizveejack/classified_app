import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    Key? key,
    required this.label,
    required this.onTap,
    required this.color,
    required this.icon,
  }) : super(key: key);

  final String label;
  final VoidCallback onTap;
  final Color color;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all<Size>(
          const Size.fromWidth(300),
        ),
        padding: MaterialStateProperty.all<EdgeInsets>(
          const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        ),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        backgroundColor: MaterialStateProperty.all<Color>(color),
      ),
      onPressed: onTap,
      icon: Icon(
        icon,
        size: 40.00,
      ),
      label: Text(
        "$label দিয়ে লগইন করুন",
        style: const TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}
