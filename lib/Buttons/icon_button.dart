import 'package:flutter/material.dart';

class IconButtonDemo extends StatelessWidget {
  const IconButtonDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IconButton(
          onPressed: () {
            print("Hyy, i am icon button");
          },
          icon: const Icon(Icons.home),
        ),
      ),
    );
  }
}
