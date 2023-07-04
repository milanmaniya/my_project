import 'package:flutter/material.dart';
import 'package:my_project/model_class/Whatsapp_model_class/pages/call_page.dart';
import 'package:my_project/model_class/Whatsapp_model_class/pages/chat_page.dart';
import 'package:my_project/model_class/Whatsapp_model_class/pages/status_page.dart';

class UiPage extends StatefulWidget {
  const UiPage({super.key});

  @override
  State<UiPage> createState() => _UiPageState();
}

class _UiPageState extends State<UiPage> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Whatsapp"),
            actions: const [
              Icon(
                Icons.search,
                color: Colors.white,
              ),
            ],
            bottom: const TabBar(
              tabs: [
                Tab(
                  child: Text("Chat"),
                ),
                Tab(
                  child: Text("Status"),
                ),
                Tab(
                  child: Text("Call"),
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              ChatPage(),
              StatusPage(),
              CallPage(),
            ],
          ),
        ),
      );
}