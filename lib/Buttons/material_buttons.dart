import 'package:flutter/material.dart';

class MaterialButtonDemo extends StatelessWidget {
  const MaterialButtonDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          color: Colors.red,
          disabledColor: Colors.green,
          disabledTextColor: Colors.white,
          highlightColor: Colors.deepPurple,
          hoverColor: Colors.pink,
          minWidth: 150,
          textColor: Colors.white,
          splashColor: Colors.green,
          onPressed: () {
            print("Hyy, i am material button");
          },
          child: const Text("Material Button"),
        ),
      ),
    );
  }
}
