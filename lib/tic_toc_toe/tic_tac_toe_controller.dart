import 'package:flutter/material.dart';

String player1 = 'Player O';
String player2 = 'Player X';
bool isActivated = false;
int numberO = 0, numberX = 0, numberDraw = 0, fileBox = 0;

List<Color> cardColor = List.generate(9, (index) => Colors.grey.shade400);
List<double> elevation = List.generate(9, (index) => 0);
List<String> value = List.generate(9, (index) => '');

class TicTocToe {
  static void winnerCount(context) {
    if (isActivated) {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Player X Winner')));
      numberX++;
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Player O Winner')));
      numberO++;
    }
  }

  static void playerSwap(int index, context) {
    if (value[index] == '') {
      if (isActivated == true) {
        value[index] = 'O';
        fileBox++;
        cardColor[index] = Colors.red.shade300;
        elevation[index] = 20;
        isActivated = false;
      } else {
        value[index] = 'X';
        fileBox++;
        cardColor[index] = Colors.yellow;
        elevation[index] = 20;
        isActivated = true;
      }
    }
    winnerState(context);
  }

  static void clearControl() {
    value = List.generate(9, (index) => '');
    cardColor = List.generate(9, (index) => Colors.grey.shade400);
    fileBox = 0;
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
      clearControl();
    } else if (fileBox == 9) {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Match Draw Play Again...')));
      numberDraw++;
      clearControl();
    }
  }
}
