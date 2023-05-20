import 'package:flutter/material.dart';
import 'package:my_project/practice/home_interial_home/screens/home_screen/home_screen_common_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome home",
              style: TextStyle(
                  color: Colors.grey.shade500,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Alex Tobey",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/accuntlogo.png"),
                    ),
                  ),
                ),
              ],
            ),
            ListTile(
              leading: Container(
                alignment: Alignment.center,
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.grey.shade400, width: 2),
                ),
                child: const Icon(
                  Icons.bolt_rounded,
                  color: Colors.black,
                  size: 25,
                ),
              ),
              title: const Text(
                "20.3 Kwh",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                "Power usago for today",
                style: TextStyle(
                  color: Colors.grey.shade500,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    commonHome(
                      icon: Icons.bathroom_rounded,
                      name: "Bathroom",
                      numberOfDevice: "1 device",
                      isSelected: true,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    commonHome(
                      icon: Icons.soup_kitchen,
                      name: "Kitchen",
                      numberOfDevice: "2 device",
                    ),
                  ],
                ),
                Column(
                  children: [
                    commonHome(
                      icon: Icons.bedroom_parent_rounded,
                      name: "Living Room",
                      numberOfDevice: "4 device",
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    commonHome(
                      icon: Icons.dining_rounded,
                      name: "Dining Room",
                      numberOfDevice: "1 device",
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Stack(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.purple.shade800,
            ),
            child: ListTile(
              leading: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/accuntlogo.png"),
                  ),
                ),
              ),
              title: const Text(
                "Worry About Me",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: const Text(
                "Eile Goulding, blackbear",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 142),
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.home,
                  color: Colors.purple.shade800,
                  size: 25,
                ),
                Icon(
                  Icons.people,
                  color: Colors.grey.shade500,
                  size: 25,
                ),
                Icon(
                  Icons.bolt_rounded,
                  color: Colors.grey.shade500,
                  size: 25,
                ),
                Icon(
                  Icons.settings,
                  color: Colors.grey.shade500,
                  size: 25,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
