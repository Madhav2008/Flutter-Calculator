import 'package:calculator/Calculator_Button.dart';
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
            _getButton(text: '7', onTap: () => numberPressed(7)),
            _getButton(text: '8', onTap: () => numberPressed(8)),
            _getButton(text: '9', onTap: () => numberPressed(9)),
            _getButton(
                text: 'x',
                onTap: () => operatorPressed('*'),
                backgroundColor: Color.fromRGBO(220, 220, 220, 1)),
          ],
        ),
        Row(
          children: [
            _getButton(text: '4', onTap: () => numberPressed(4)),
            _getButton(text: '5', onTap: () => numberPressed(5)),
            _getButton(text: '6', onTap: () => numberPressed(6)),
            _getButton(
                text: '/',
                onTap: () => operatorPressed('/'),
                backgroundColor: Color.fromRGBO(220, 220, 220, 1)),
          ],
        ),
        Row(
          children: [
            _getButton(
              text: '1',
              onTap: () => numberPressed(1),
            ),
            _getButton(
              text: '2',
              onTap: () => numberPressed(2),
            ),
            _getButton(
              text: '3',
              onTap: () => numberPressed(3),
            ),
            _getButton(
              text: '+',
              onTap: () => operatorPressed('+'),
              backgroundColor: Color.fromRGBO(220, 220, 220, 1),
            )
          ],
        ),
        Row(
          children: [
            _getButton(
              text: '=',
              onTap: calculateResult,
              backgroundColor: Colors.orange,
              textColor: Colors.white,
            ),
            _getButton(
              text: '0',
              onTap: () => numberPressed(0),
            ),
            _getButton(
              text: 'C',
              onTap: clear,
              backgroundColor: Color.fromRGBO(220, 220, 220, 1),
            ),
            _getButton(
              text: '-',
              onTap: () => operatorPressed('-'),
              backgroundColor: Color.fromRGBO(220, 220, 220, 1),
            ),
          ],
        ),
      ],
    );
  }
}

operatorPressed(String operator) {}
numberPressed(int number) {}
calculateResult() {}
clear() {}