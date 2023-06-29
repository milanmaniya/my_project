import 'package:flutter/material.dart';

class ChatsPages extends StatefulWidget {
  const ChatsPages({super.key});

  @override
  State<ChatsPages> createState() => _ChatsPagesState();
}

class _ChatsPagesState extends State<ChatsPages> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Chats Page'),
    );
  }
}