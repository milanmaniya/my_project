import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ListViewDemo extends StatelessWidget {
  const ListViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const ClampingScrollPhysics(),
        // scrollDirection: Axis.horizontal,
        // dragStartBehavior: DragStartBehavior.down,
        itemExtent: 20,
        // keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,.
        padding: const EdgeInsets.all(20),
        primary: false,
        // reverse: true,
        // shrinkWrap: true,
        clipBehavior: Clip.antiAlias,
        children: List.generate(
          200,
          (index) => Text(index.toString()),
        ),
      ),
    );
  }
}
