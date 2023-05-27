import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
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

    List<IconData> icons = [
      Icons.home,
      Icons.search,
      Icons.favorite_outline_rounded,
      Icons.person,
    ];

    return Scaffold(
      // backgroundColor: Colors.red[400],
      body: screens[index],

      // body: Container(
      //   height: double.infinity,
      //   width: double.infinity,
      //   decoration: const BoxDecoration(
      //     image: DecorationImage(
      //       fit: BoxFit.cover,
      //       image: AssetImage("assets/images/bali.png"),
      //     ),
      //   ),
      // ),

      // bottomNavigationBar: CurvedNavigationBar(
      //   index: index,
      //   items: iconList,
      //   height: 60,
      //   animationCurve: Curves.fastOutSlowIn,
      //   animationDuration: const Duration(milliseconds: 650),
      //   backgroundColor: Colors.deepPurple.shade400,
      //   onTap: (value) {
      //     setState(() {
      //       index = value;
      //     });
      //   },
      // ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple.shade400,
        onPressed: () {},
        child: const Icon(Icons.arrow_back),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: icons,
        gapLocation: GapLocation.center,
        elevation: 0,
        splashColor: Colors.red,
        backgroundColor: Colors.deepPurple.shade400,
        notchSmoothness: NotchSmoothness.smoothEdge,
        activeIndex: index,
        onTap: (int ind) {
          index = ind;
          setState(() {});
        },
      ),
    );
  }
}
