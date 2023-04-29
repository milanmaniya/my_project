import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ScrollViewDemo extends StatelessWidget {
  const ScrollViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        scrollDirection: Axis.vertical,
        // reverse: true,
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        dragStartBehavior: DragStartBehavior.start,
        child: Column(
          children: List.generate(
            20,
            (index) => const ListTile(
              leading: Icon(Icons.search),
              title: Text("milan"),
              subtitle: Text("messages"),
              trailing: Text("2:10 pm"),
            ),
          ),
        ),
      ),
    );
  }
}
