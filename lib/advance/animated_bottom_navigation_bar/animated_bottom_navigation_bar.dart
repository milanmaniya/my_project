import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import '../cruved_animated_bottom_navigation_bar/pages/favouritepage.dart';
import '../cruved_animated_bottom_navigation_bar/pages/home_page.dart';
import '../cruved_animated_bottom_navigation_bar/pages/profile_page.dart';
import '../cruved_animated_bottom_navigation_bar/pages/search_page.dart';
import '../cruved_animated_bottom_navigation_bar/pages/setting_page.dart';

class AnimatedBottomNavigationBar extends StatefulWidget {
  const AnimatedBottomNavigationBar({super.key});

  @override
  State<AnimatedBottomNavigationBar> createState() =>
      _AnimatedBottomNavigationBarState();
}

class _AnimatedBottomNavigationBarState
    extends State<AnimatedBottomNavigationBar> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    List screens = [
      const HomePage(),
      const SearchPaage(),
      const FavouritePage(),
      const SettingPage(),
      const ProfilePage()
    ];

    List<IconData> icons = [
      Icons.home,
      Icons.search,
      Icons.favorite_outline_rounded,
      Icons.person,
    ];

    return Scaffold(
      body: screens[index],
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple.shade400,
        onPressed: () {},
        child: const Icon(Icons.arrow_back),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
     
    );
  }
}
