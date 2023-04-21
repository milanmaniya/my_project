import 'package:flutter/material.dart';

class ContainerExampleDemo extends StatelessWidget {
  const ContainerExampleDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 600,
          width: 600,
          decoration: BoxDecoration(
            color: Colors.deepPurple,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              width: 3,
              color: Colors.black54,
              style: BorderStyle.solid,
            ),
            image: const DecorationImage(
                image: NetworkImage(
                    "https://m.media-amazon.com/images/I/51ZT3aMrJIL._SX522_.jpg"),
                //fit: BoxFit.fill,
                alignment: Alignment.center,
                filterQuality: FilterQuality.low),
          ),
        ),
      ),
    );
  }
}
