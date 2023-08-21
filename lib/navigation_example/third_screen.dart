import 'package:flutter/material.dart';

class ThirdScren extends StatefulWidget {
  const ThirdScren({super.key});

  @override
  State<ThirdScren> createState() => _ThirdScrenState();
}

class _ThirdScrenState extends State<ThirdScren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go back to second screen'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.popUntil(context, ModalRoute.withName('/first'));
              },
              child: const Text('Go back to first screen'),
            ),
          ],
        ),
      ),
    );
  }
}
