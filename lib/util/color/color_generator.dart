import 'dart:math';
import 'package:flutter/material.dart';
import 'color_constants.dart';

class ColorUtil {
  static Color changeColor() {
    Random random = Random();
    var R = random.nextInt(rgbMaxValue);
    var G = random.nextInt(rgbMaxValue);
    var B = random.nextInt(rgbMaxValue);
    var opacity = random.nextInt(maxAlphaValue + 1)/maxAlphaValue;
    return Color.fromRGBO(R, G, B, opacity);
  }
}
