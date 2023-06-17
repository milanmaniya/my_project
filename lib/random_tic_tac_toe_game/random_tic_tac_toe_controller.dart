import 'dart:math';

import 'package:flutter/material.dart';

List<String> value = List.generate(9, (index) => '');
String playerX = 'PlayerX';
String playerO = 'Player0';
int numO = 0, numX = 0, numDraw = 0, fillBox = 0;
List<double> elevation = List.generate(9, (index) => 0);
List<Color> color = List.generate(9, (index) => Colors.grey.shade400);
bool isActive = false;
Random randomNumber = Random();
var num = randomNumber.nextInt(9);

class RandomTicTacToe {
  static void playerSwap(index, context) {
    if (isActive == true) {
      value[index] = 'X';
      color[index] = Colors.yellow;
      elevation[index] = 20;
      fillBox++;
      isActive = false;
    } else {
      value[index] = 'O';
      color[index] = Colors.red.shade400;
      elevation[index] = 20;
      fillBox++;
      isActive = true;
    }
    winnerState(context);
  }

  static void clearController() {
    value = List.generate(9, (index) => '');
    color = List.generate(9, (index) => Colors.grey.shade400);
    fillBox = 0;
  }

  static void winnerCount(context) {
    if (isActive) {
      numO++;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Player O is Winner'),
        ),
      );
    } else {
      numX++;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Player X is Winner'),
        ),
      );
    }
  }

  static void winnerState(context) {
    if (value[0] == value[1] && value[1] == value[2] && value[0] != '' ||
        value[0] == value[3] && value[3] == value[6] && value[0] != '' ||
        value[2] == value[5] && value[5] == value[8] && value[2] != '' ||
        value[6] == value[7] && value[7] == value[8] && value[6] != '' ||
        value[3] == value[4] && value[4] == value[5] && value[3] != '' ||
        value[1] == value[4] && value[4] == value[7] && value[1] != '' ||
        value[2] == value[4] && value[4] == value[6] && value[2] != '' ||
        value[0] == value[4] && value[4] == value[8] && value[0] != '') {
      winnerCount(context);
      clearController();
    } else if (fillBox == 9) {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Match Draw Play Again...')));
      numDraw++;
      clearController();
    }
  }
}
