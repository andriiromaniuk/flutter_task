import 'package:flutter/material.dart';
import 'package:test_task/util/color/color_generator.dart';

import 'custom.widgets/outlined_text_widget.dart';

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
