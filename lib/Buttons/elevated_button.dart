import 'package:flutter/material.dart';

class ElevatedButtonDemo extends StatelessWidget {
  const ElevatedButtonDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            print("Hyy, i am elevated button");
          },
          child: const Text("Elevated Button"),
        ),
      ),
    );
  }
}
