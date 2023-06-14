import 'package:flutter/material.dart';

String player1 = 'Player O';
String player2 = 'Player X';
bool isActivated = false;

List<String> value = [
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
];

class TicTocToe {
  static void playerSwap(int index) {
    if (value[index] == '') {
      if (isActivated == true) {
        value.removeAt(index);
        value.insert(index, 'O');
        isActivated = false;
      } else {
        value.removeAt(index);
        value.insert(index, 'X');
        isActivated = true;
      }
    }
  }

  static void winnerState() {
    if (value[0] == value[1] && value[1] == value[2] && value[0] != '') {}
    if (value[0] == value[3] && value[3] == value[6] && value[0] != '') {}
    if (value[2] == value[5] && value[5] == value[8] && value[2] != '') {}
    if (value[6] == value[7] && value[7] == value[8] && value[6] != '') {}
    if (value[3] == value[4] && value[4] == value[5] && value[3] != '') {}
    if (value[6] == value[7] && value[7] == value[8] && value[6] != '') {}
    if (value[2] == value[4] && value[4] == value[6] && value[2] != '') {}
    if (value[0] == value[4] && value[4] == value[8] && value[0] != '') {}
  }
}
