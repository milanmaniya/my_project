import 'package:flutter/material.dart';
import 'package:my_project/bottom_navigation_bar/screens/home_screen_demo.dart';
import 'package:my_project/bottom_navigation_bar/screens/library_demo.dart';
import 'package:my_project/bottom_navigation_bar/screens/shorts_demo.dart';
import 'package:my_project/bottom_navigation_bar/screens/subscription_demo.dart';

class BottomNavigationDemo extends StatefulWidget {
  const BottomNavigationDemo({super.key});

  @override
  State<BottomNavigationDemo> createState() => _BottomNavigationDemoState();
}

class _BottomNavigationDemoState extends State<BottomNavigationDemo> {
  List<Map<String, dynamic>> navigationData = [
    {'title': "Home", 'icon': Icons.home},
    {'title': "Sorts", 'icon': Icons.bolt},
    {'title': "Subscription", 'icon': Icons.video_camera_back_outlined},
    {'title': "Library", 'icon': Icons.library_books_rounded},
  ];

  List<Widget> screenList = [
    const HomePage(),
    const ShortsDemo(),
    const SubscriptionDemo(),
    const LibraryDemo(),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (value) {
          selectedIndex = value;
          setState(() {});
        },
        items: List.generate(
          navigationData.length,
          (index) => BottomNavigationBarItem(
            icon: Icon(
              navigationData[index]['icon'],
            ),
            label: navigationData[index]['title'],
            backgroundColor: Colors.red,
          ),
        ),
      ),
      body: screenList.elementAt(selectedIndex),
    );
  }
}
