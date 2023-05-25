import 'package:flutter/material.dart';

class TransformRotate extends StatefulWidget {
  const TransformRotate({super.key});

  @override
  State<TransformRotate> createState() => _TransformRotateState();
}

class _TransformRotateState extends State<TransformRotate> {
  double turns = 0.0;
  double turnstTwo = 0.0;
  double redTop = 0;
  double redRight = 0;

  double blueTop = 0;
  double blurLeft = 0;

  double angle = 0;
  double randomOpacity = 0;
  int duration = 0;

  void _changeRotation() {
    if (angle == 15) {
      angle = 0;
      redRight = 0;

      blurLeft = 0;
      duration = 0;
    } else {
      angle = 15;
      duration = 1;
      redTop = 20;
      redRight = 30;

      blueTop = 10;
      blurLeft = 110;
    }

    if (randomOpacity == 0) {
      randomOpacity = 1;
    } else {
      randomOpacity = 0;
    }

    turns = -angle / 360;
    turnstTwo = angle / 360;
    setState(() {});
  }

// circle rotate
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         ElevatedButton(
//           onPressed: _changeRotation,
//           child: const Text('Rotate Logo'),
//         ),
//         Padding(
//           padding: const EdgeInsets.all(50),
//           child: AnimatedRotation(
//             turns: turns,
//             duration: const Duration(seconds: 1),
//             child: Image.asset("assets/images/icon.png"),
//           ),
//         ),
//       ],
//     );
//   }

// atm card design
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Stack(
              children: [
                AnimatedRotation(
                  duration: Duration(seconds: duration),
                  turns: turns,
                  child: AnimatedOpacity(
                    opacity: randomOpacity,
                    duration: const Duration(seconds: 4),
                    child: Container(
                      margin: EdgeInsets.only(top: redTop),
                      height: 365,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.pink.shade400,
                      ),
                    ),
                  ),
                ),
                AnimatedRotation(
                  duration: Duration(seconds: duration),
                  turns: turnstTwo,
                  child: AnimatedOpacity(
                    opacity: randomOpacity,
                    duration: const Duration(seconds: 4),
                    child: Container(
                      margin: EdgeInsets.only(top: blueTop, left: blurLeft),
                      height: 365,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 410,
                  width: 230,
                  margin: EdgeInsets.only(left: redRight),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.deepPurple.shade400,
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: _changeRotation,
            child: const Text('Rotate Logo'),
          ),
        ],
      ),
    );
  }
}
