import 'package:flutter/material.dart';

class TextDemo extends StatelessWidget {
  const TextDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Maniya Milan",
          style: TextStyle(
              color: Colors.redAccent,
              fontSize: 30,
              backgroundColor: Colors.blue,
              wordSpacing: 10,
              letterSpacing: 10,
              decoration: TextDecoration.underline,
              decorationColor: Colors.black87,
              decorationStyle: TextDecorationStyle.dashed,
              decorationThickness: 2,
              fontWeight: FontWeight.bold,
              height: 2,
              overflow: TextOverflow.clip),
          maxLines: 1,
          textAlign: TextAlign.justify,
          textDirection: TextDirection.ltr,
          textScaleFactor: 1.5,
          softWrap: true,
          overflow: TextOverflow.visible,
        ),
      ),
    );
  }
}
