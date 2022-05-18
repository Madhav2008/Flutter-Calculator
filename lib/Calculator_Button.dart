import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  CalculatorButton({
    required this.label,
    required this.onTap,
    required this.size,
    this.backgroundColor = Colors.white,
    this.labelColor = Colors.black,
  });

  final String label;
  final VoidCallback onTap;
  final double size;
  final Color? backgroundColor;
  final Color? labelColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(6),
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(1, 1),
              blurRadius: 2,
            ),
          ],
          borderRadius: BorderRadius.all(
            Radius.circular(size / 2),
          ),
          color: backgroundColor,
        ),
        child: InkWell(
          customBorder: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(size / 2)),
          ),
          onTap: onTap,
          child: Center(
            child: Text(
              label,
              style: TextStyle(
                fontSize: 24,
                color: labelColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget _getButton({
  required String text,
  Function onTap,
  Color backgroundColor = Colors.white,
  Color textColor = Colors.black,
}) {
  return CalculatorButton(
    label: text,
    onTap: onTap,
    size: 90,
    backgroundColor: backgroundColor,
    labelColor: textColor,
  );
}
