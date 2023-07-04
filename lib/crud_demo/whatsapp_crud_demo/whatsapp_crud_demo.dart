import 'package:flutter/material.dart';

class WhatsappCrudDemo extends StatefulWidget {
  const WhatsappCrudDemo({super.key});

  @override
  State<WhatsappCrudDemo> createState() => _WhatsappCrudDemoState();
}

class _WhatsappCrudDemoState extends State<WhatsappCrudDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Text(
          'Whatsapp',
          style: TextStyle(
            fontFamily: 'Dancing Script',
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        bottom: const PreferredSize(
          preferredSize: Size(double.infinity, 60),
          child: TabBar(
            tabs: [
              Text(
                'Chats',
                style: TextStyle(
                  fontFamily: 'Dancing Script',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
