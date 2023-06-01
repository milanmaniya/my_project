import 'package:flutter/material.dart';

class TextButtonDemo extends StatelessWidget {
  const TextButtonDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            print("Hyy, i am text button");
          },
          child: const Text("Text Button"),
        ),
      ),
    );
  }
}
