import 'package:flutter/material.dart';
import 'package:my_project/TabBar/screens/calls_cemo.dart';
import 'package:my_project/TabBar/screens/chats_demo.dart';
import 'package:my_project/TabBar/screens/statues_demo.dart';

class TabBarDemo extends StatefulWidget {
  const TabBarDemo({super.key});

  @override
  State<TabBarDemo> createState() => _TabBarDemoState();
}

class _TabBarDemoState extends State<TabBarDemo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Whatsapp',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Dancing Script',
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          bottom: const PreferredSize(
            preferredSize: Size(double.infinity, 70),
            child: TabBar(
              tabs: [
                Text(
                  'Chats',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Dancing Script',
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Stutes',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Dancing Script',
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Calls',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Dancing Script',
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            ChatsDemo(),
            StatuesDemo(),
            CallsDemo(),
          ],
        ),
      ),
    );
  }
}
