import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
/*
import 'package:my_project/advance/cruved_animated_bottom_navigation_bar/pages/favouritepage.dart';
import 'package:my_project/advance/cruved_animated_bottom_navigation_bar/pages/home_page.dart';
import 'package:my_project/advance/cruved_animated_bottom_navigation_bar/pages/profile_page.dart';
import 'package:my_project/advance/cruved_animated_bottom_navigation_bar/pages/search_page.dart';
import 'package:my_project/advance/cruved_animated_bottom_navigation_bar/pages/setting_page.dart';
*/

class AnimtedCurveBottomNavigationBar extends StatefulWidget {
  const AnimtedCurveBottomNavigationBar({super.key});

  @override
  State<AnimtedCurveBottomNavigationBar> createState() =>
      _AnimtedCurveBottomNavigationBarState();
}

class _AnimtedCurveBottomNavigationBarState
    extends State<AnimtedCurveBottomNavigationBar> {
  int index = 2;

  @override
  Widget build(BuildContext context) {
    // List screens = [
    //   const HomePage(),
    //   const SearchPaage(),
    //   const FavouritePage(),
    //   const SettingPage(),
    //   const ProfilePage()
    // ];

    List<Widget> iconList = [
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
      // body: screens[index],

      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/bali.png"),
          ),
        ),
      ),

      bottomNavigationBar: CurvedNavigationBar(
        index: index,
        items: iconList,
        height: 60,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: const Duration(milliseconds: 650),
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
      ),
    );
  }
}
