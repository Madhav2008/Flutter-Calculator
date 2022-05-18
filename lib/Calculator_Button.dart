import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  CalculatorButton({
    required this.label,
    required this.onTap,
    required this.size,
    this.backgroundColor = Colors.white,
    this.labelColor = Colors.black
  });

  final String label;
  final VoidCallback onTap;
  final double size;
  final Color? backgroundColor;
  final Color? labelColor;

  @override
  Widget build(BuildContext context) {
    …
  }
}