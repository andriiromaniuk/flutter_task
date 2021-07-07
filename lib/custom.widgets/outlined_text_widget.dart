import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OutlinedText extends StatelessWidget {
  final String text;
  final double fontSize;
  final double strokeWidth;
  final Color textColor;
  final Color outlineColor;

  const OutlinedText({
    Key? key,
    this.text = "",
    this.fontSize = 40,
    this.strokeWidth = 4,
    this.textColor = Colors.white,
    this.outlineColor = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: fontSize,
              foreground: Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = strokeWidth
                ..color = outlineColor,
            ),
          ),
        ),
        Center(
          child: Text(text,
              style: TextStyle(fontSize: fontSize, color: textColor)),
        ),
      ],
    );
  }
}
