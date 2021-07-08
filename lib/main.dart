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
  int count = 0;

  void changeColor() {
    setState(() => _color = ColorUtil.changeColor());
  }

  void changeCounter() {
    setState(() => count++);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: MaterialApp(
          home: Scaffold(
            body: OutlinedText(text: "Hey there $count"),
            backgroundColor: _color,
            floatingActionButton: FloatingActionButton(onPressed: () {changeCounter();},),
          ),
        ),
        onTap: changeColor);
  }
}
