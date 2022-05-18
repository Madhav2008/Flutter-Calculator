import 'package:calculator/Result_Display.dart';
import 'package:flutter/material.dart';

class Calculation extends StatefulWidget {
  @override
  _CalculationState createState() => _CalculationState();
}

class _CalculationState extends State<Calculation> {
  late int result;

  @override
  Widget build(BuildContext context) {
    return ResultDisplay(text: '0');
  }
}