import 'package:flutter/material.dart';

List<Color> colors = [
  Colors.green,
  Colors.red,
];

List<int> number = [];
int count = 0;

class CrossColor {
  

  static Color colorChangeIndex(int index) {
    if (index == number[count]) {
      count++;
      return Colors.red;
    } else {
      return Colors.green;
    }
  }
}