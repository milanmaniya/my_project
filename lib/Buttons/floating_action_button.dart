import 'package:flutter/material.dart';

class FloatingAActionButtonDemo extends StatelessWidget {
  const FloatingAActionButtonDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        elevation: 100,
        disabledElevation: 20,
        focusColor: Colors.red, // android
        hoverColor: Colors.red,
        isExtended: true,
        
        // mini: true,
        splashColor: Colors.green, // android
        tooltip: 'Hello',
        onPressed: () {
          print("Hyy,i am floating action button");
        },
        child: const FlutterLogo(),
      ),
    );
  }
}
