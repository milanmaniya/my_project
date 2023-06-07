import 'package:flutter/material.dart';
import 'package:my_project/model_class/Whatsapp_model_class/model_class_whatsapp.dart';
import 'package:my_project/model_class/Whatsapp_model_class/pages/call_page.dart';
import 'package:my_project/model_class/Whatsapp_model_class/pages/chat_page.dart';
import 'package:my_project/model_class/Whatsapp_model_class/pages/status_page.dart';
import 'package:my_project/model_class/Whatsapp_model_class/row_data_whatsapp.dart';

class UiPage extends StatelessWidget {
  const UiPage({super.key});

  @override
  Widget build(BuildContext context) {
    for (var element in whatsappUser) {
      whatsappData.add(WhatsappUser.fromJson(element));
    }

    return Scaffold(
      appBar: AppBar(
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
    );
  }
}
