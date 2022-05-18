import 'package:flutter/material.dart';

void main() {
  runApp(
    CalculatorApp(),
  );
}

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter basic calculator',
      home: Scaffold(
        body: Calculation(),
      ),
    );
  }
}
