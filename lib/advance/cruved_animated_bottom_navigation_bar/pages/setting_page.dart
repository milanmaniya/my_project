import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade400,
      body: const Center(
        child: Text(
          "Setting Page",
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
