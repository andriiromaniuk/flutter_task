import 'package:flutter/material.dart';
import 'package:test_task/util/color/color_generator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color _color = Colors.white;

  void changeColor() {
    setState(() => _color = ColorUtil.changeColor());
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: MaterialApp(
          home: Scaffold(
            body: const OutlinedText(text: "Hey there"),
            backgroundColor: _color,
          ),
        ),
        onTap: changeColor);
  }
}

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