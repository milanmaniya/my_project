import 'package:flutter/material.dart';
import 'package:my_project/tab_bar_demo2/screen/calls_page.dart';
import 'package:my_project/tab_bar_demo2/screen/chats_page.dart';
import 'package:my_project/tab_bar_demo2/screen/statues_pages.dart';

class TabBarDemo2 extends StatefulWidget {
  const TabBarDemo2({super.key});

  @override
  State<TabBarDemo2> createState() => _TabBarDemo2State();
}

class _TabBarDemo2State extends State<TabBarDemo2>
    with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Whatsapp'),
        bottom: PreferredSize(
          preferredSize: const Size(double.infinity, 60),
          child: TabBar(
            controller: _tabController,
            tabs: const [
              Text('Chats'),
              Text('Statues'),
              Text('Calls'),
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          ChatsPages(),
          StatuesPages(),
          CallsPages(),
        ],
      ),
    );
  }
}
