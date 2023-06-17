import 'package:flutter/material.dart';
import 'package:my_project/random_tic_tac_toe_game/random_tic_tac_toe_controller.dart';

class RandomTicTacToeUi extends StatefulWidget {
  const RandomTicTacToeUi({super.key});

  @override
  State<RandomTicTacToeUi> createState() => _RandomTicTacToeUiState();
}

class _RandomTicTacToeUiState extends State<RandomTicTacToeUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  const Text(
                    "Player O",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Dancing Script",
                    ),
                  ),
                  Text(
                    numO.toString(),
                    style: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Dancing Script",
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  const Text(
                    "Player X",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Dancing Script",
                    ),
                  ),
                  Text(
                    numX.toString(),
                    style: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Dancing Script",
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  const Text(
                    "Draw",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Dancing Script",
                    ),
                  ),
                  Text(
                    numDraw.toString(),
                    style: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Dancing Script",
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 35,
          ),
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 3,
            mainAxisSpacing: 5,
            crossAxisSpacing: 3,
            children: [
              ...List.generate(
                9,
                (index) => GestureDetector(
                  onTap: () {
                    RandomTicTacToe.playerSwap(index, context);
                    setState(() {});
                  },
                  child: Card(
                    elevation: elevation[index],
                    color: color[index],
                    margin: const EdgeInsets.all(3),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: const BorderSide(
                        color: Colors.black26,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        value[index],
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.grey.shade400),
                ),
                onPressed: () {
                  RandomTicTacToe.clearController();
                  setState(() {});
                },
                child: const Text(
                  "Reset",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Dancing Script",
                  ),
                ),
              ),
              Text(
                (isActive) ? playerX : playerO,
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Dancing Script",
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.grey.shade400),
                ),
                onPressed: () {
                  RandomTicTacToe.clearController();
                 
                  numO = 0;
                  numX = 0;
                  numDraw = 0;
                  setState(() {});
                },
                child: const Text(
                  "Restart",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Dancing Script",
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
