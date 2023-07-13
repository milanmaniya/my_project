import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextDecorationDemo extends StatefulWidget {
  const TextDecorationDemo({super.key});

  @override
  State<TextDecorationDemo> createState() => _TextDecorationDemoState();
}

class _TextDecorationDemoState extends State<TextDecorationDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextField(
          cursorColor: Colors.red,
          cursorHeight: 40,
          cursorOpacityAnimates: false,
          cursorWidth: 20,
          // readOnly: true,

          enableSuggestions: true,
          // enabled: false,
          // expands: true,
          // minLines: 2,
          // maxLines: 5,
          keyboardType: TextInputType.name,
          // inputFormatters: [
          //   FilteringTextInputFormatter.digitsOnly,
          // ],
          // showCursor: false,
          
          // mouseCursor: MouseCursor.uncontrolled,
          // obscureText: true,
          // obscuringCharacter: '?',

          cursorRadius: const Radius.circular(20),
        ),
      ),
    );
  }
}
