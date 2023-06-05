import 'package:flutter/material.dart';

class InkwellDemo extends StatelessWidget {
  const InkwellDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          
          onTap: () {
            print("Hyy, i am inkwell button");
          },
          child: const Icon(Icons.home),
        ),
      ),
    );
  }
}
