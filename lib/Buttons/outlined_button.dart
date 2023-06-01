import 'package:flutter/material.dart';

class OutlinedButtonDemo extends StatelessWidget {
  const OutlinedButtonDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: OutlinedButton(
          onPressed: () {
            print("Hyy, i am Outliend button");
          },
          child: const Text("Outlined Button"),
        ),
      ),
    );
  }
}
