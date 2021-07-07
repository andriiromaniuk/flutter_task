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
            body: Stack(
              children: <Widget>[
                Center(
                  child: Text(
                    "Hey there!",
                    style: TextStyle(
                      fontSize: 40,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 2
                        ..color = Colors.black,
                    ),
                  ),
                ),
                const Center(
                  child: Text("Hey there!",
                      style: TextStyle(fontSize: 40, color: Colors.white)),
                ),
              ],
            ),
            backgroundColor: _color,
          ),
        ),
        onTap: changeColor);
  }
}
