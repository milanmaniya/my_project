import 'package:flutter/material.dart';

class IconAssetDemo extends StatelessWidget {
  const IconAssetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Icon(
          Icons.abc,
          size: 30,
          color: Colors.black,
        ),
      ),
    );
  }
}
