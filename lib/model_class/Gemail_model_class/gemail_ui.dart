import 'package:flutter/material.dart';

class GemailUi extends StatelessWidget {
  const GemailUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: Column(
          children: List.generate(
            10,
            (index) => const ListTile(),
          ),
        ),
      ),
    );
  }
}
