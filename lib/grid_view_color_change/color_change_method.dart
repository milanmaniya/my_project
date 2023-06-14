import 'package:flutter/material.dart';

class ColorMagic {
  static int? firstIndex;
  static int? secondIndex;

  static void colorChange(int index) {
    if (firstIndex == null) {
      firstIndex = index;
    } else {
      secondIndex = index;
    }

    if (firstIndex != null && secondIndex != null) {
      Color temp = myColor[firstIndex!];
      myColor[firstIndex!] = myColor[secondIndex!];
      myColor[secondIndex!] = temp;
    }
  }
}

List<Color> myColor = [
  Colors.black,
  Colors.pink,
  Colors.green,
  Colors.yellow,
  Colors.deepOrange,
  Colors.deepPurple,
  Colors.red,
  Colors.indigo,
  Colors.blue
];
