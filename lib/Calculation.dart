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
    return Column(
      children: [
        ResultDisplay(text: '0'),
        Row(
          children: [
            // Here we want to place the buttons of the first Row
          ],
        )
      ],
    );
  }
}
