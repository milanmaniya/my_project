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
                    numberO.toString(),
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
                    numberX.toString(),
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
                    numberDraw.toString(),
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
                    TicTocToe.playerSwap(index, context);
                    setState(() {});
                  },
                  child: Card(
                    elevation: elevation[index],
                    color: cardColor[index],
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
                  TicTocToe.clearControl();
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
                (isActivated) ? player1 : player2,
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
                  TicTocToe.clearControl();
                  numberO = 0;
                  numberDraw = 0;
                  numberX = 0;
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
