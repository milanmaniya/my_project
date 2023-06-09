import 'package:flutter/material.dart';

class Neumorphisum extends StatelessWidget {
  const Neumorphisum({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment(-1, 1),
                    end: Alignment(1, 1),
                    colors: [
                      Color(0xFFE6E6E6),
                      Color(0xFFFFFFFF),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: const [
                    BoxShadow(
                        color: Color(0xffcccccc),
                        blurRadius: 40,
                        offset: Offset(20, 20)),
                    BoxShadow(
                        color: Color(0xffffffff),
                        blurRadius: 40,
                        offset: Offset(-20, -20))
                  ]),
              child: const Icon(
                Icons.bookmark,
                size: 40,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
