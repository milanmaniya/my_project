import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:my_project/advance/cruved_animated_bottom_navigation_bar/navigation_key.dart';
import 'package:my_project/advance/cruved_animated_bottom_navigation_bar/pages/favouritepage.dart';
import 'package:my_project/advance/cruved_animated_bottom_navigation_bar/pages/home_page.dart';
import 'package:my_project/advance/cruved_animated_bottom_navigation_bar/pages/profile_page.dart';
import 'package:my_project/advance/cruved_animated_bottom_navigation_bar/pages/search_page.dart';
import 'package:my_project/advance/cruved_animated_bottom_navigation_bar/pages/setting_page.dart';

class AnimtedBottomNavigationBar extends StatefulWidget {
  const AnimtedBottomNavigationBar({super.key});

  @override
  State<AnimtedBottomNavigationBar> createState() =>
      _AnimtedBottomNavigationBarState();
}

class _AnimtedBottomNavigationBarState
    extends State<AnimtedBottomNavigationBar> {
  int index = 2;

  @override
  Widget build(BuildContext context) {
    List screens = [
      const HomePage(),
      const SearchPaage(),
      const FavouritePage(),
      const SettingPage(),
      const ProfilePage()
    ];

    List<Widget> icons = [
      const Icon(
        Icons.home,
        size: 30,
      ),
      const Icon(
        Icons.search,
        size: 30,
      ),
      const Icon(
        Icons.favorite_outline_rounded,
        size: 30,
      ),
      const Icon(
        Icons.settings,
        size: 30,
      ),
      const Icon(
        Icons.person,
        size: 30,
      ),
    ];

    return Scaffold(
      body: screens[index],
      bottomNavigationBar: CurvedNavigationBar(
        key: navigationKey.getKey(),
        index: index,
        items: icons,
        height: 60,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: const Duration(milliseconds: 300),
        backgroundColor: Colors.deepPurple.shade400,
        buttonBackgroundColor: Colors.deepPurple.shade400,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
      ),
    );
  }
}
