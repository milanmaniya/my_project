import 'package:flutter/material.dart';
import 'package:my_project/model_class/Whatsapp_model_class/pages/call_page.dart';
import 'package:my_project/model_class/Whatsapp_model_class/pages/chat_page.dart';
import 'package:my_project/model_class/Whatsapp_model_class/pages/status_page.dart';

class WhatsappCrudDemo extends StatefulWidget {
  const WhatsappCrudDemo({super.key});

  @override
  State<WhatsappCrudDemo> createState() => _WhatsappCrudDemoState();
}

class _WhatsappCrudDemoState extends State<WhatsappCrudDemo>
    with TickerProviderStateMixin {
  TabController? controller;

  @override
  void initState() {
    controller = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Whatsapp',
          style: TextStyle(
            fontFamily: 'Dancing Script',
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size(double.infinity, 60),
          child: TabBar(
            controller: controller,
            tabs: const [
              Text(
                'Chats',
                style: TextStyle(
                  fontFamily: 'Dancing Script',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Statues',
                style: TextStyle(
                  fontFamily: 'Dancing Script',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Calls',
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
      body: TabBarView(
        controller: controller,
        children: const [
          ChatPage(),
          StatusPage(),
          CallPage(),
        ],
      ),
    );
  }
}
