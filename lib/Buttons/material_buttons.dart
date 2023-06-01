import 'package:flutter/material.dart';

class MaterialButtonDemo extends StatelessWidget {
  const MaterialButtonDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          onPressed: () {
            print("Hyy, i am material button");
          },
          child: const Text("Material Button"),
        ),
      ),
    );
  }
}
