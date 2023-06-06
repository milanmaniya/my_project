import 'package:flutter/material.dart';
import 'package:my_project/list_of_map_demo/row_data_whatsapp.dart';
import 'package:my_project/practice/Ui7/pages/call_page.dart';
import 'package:my_project/practice/Ui7/pages/chat_page.dart';
import 'package:my_project/practice/Ui7/pages/status_page.dart';

class WhatsappListOfMapDemo extends StatelessWidget {
  const WhatsappListOfMapDemo({super.key});

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromRGBO(18, 140, 126, 5),
            title: const Text("WhatsApp"),
            actions: const [
              SizedBox(
                width: 120,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.camera_alt_outlined),
                    Icon(Icons.search_outlined),
                    Icon(Icons.more_vert),
                  ],
                ),
              ),
            ],
            elevation: 5,
            bottom: const TabBar(
              indicatorColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: [
                Tab(
                  text: 'chat',
                ),
                Tab(text: 'Status'),
                Tab(
                  text: 'Calls',
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [ChatPage(), StatusPage(), CallPage()],
          ),
        ),
      );
}
