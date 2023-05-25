import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:my_project/advance/cruved_animated_bottom_navigation_bar/navigation_key.dart';

class FavouritePage extends StatefulWidget {
  const FavouritePage({super.key});

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade400,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final CurvedNavigationBarState navigation =
                navigationKey.getKey().currentState;

            setState(() {
              navigation.setPage(0);
            });
          },
          child: const Text("Continue to home page"),
        ),
      ),
    );
  }
}
