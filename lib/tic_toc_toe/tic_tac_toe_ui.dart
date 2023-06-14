import 'package:flutter/material.dart';
import 'package:my_project/tic_toc_toe/tic_tac_toe_controller.dart';

class TicToetacPage extends StatefulWidget {
  const TicToetacPage({super.key});

  @override
  State<TicToetacPage> createState() => _TicToetacPageState();
}

class _TicToetacPageState extends State<TicToetacPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            (isActivated) ? player1 : player2,
            style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              fontFamily: "Dancing Script",
            ),
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
                    TicTocToe.playerSwap(index);
                    TicTocToe.winnerState();
                    setState(() {});
                  },
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.red,
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
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    "Player O",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Dancing Script",
                    ),
                  ),
                  Text(
                    "0",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Dancing Script",
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "Player X",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Dancing Script",
                    ),
                  ),
                  Text(
                    "0",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Dancing Script",
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "Draw",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Dancing Script",
                    ),
                  ),
                  Text(
                    "0",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Dancing Script",
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
