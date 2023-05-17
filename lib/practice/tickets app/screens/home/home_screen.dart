import 'package:flutter/material.dart';
import 'package:my_project/practice/tickets%20app/screens/home/home_screen_common_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Where Would \nyou like to travel?",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    letterSpacing: 1.2,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                CircleAvatar(
                  radius: 22,
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=761&q=80"),
                ),
              ],
            ),
            Container(
              height: 45,
              margin: const EdgeInsets.symmetric(vertical: 15),
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Colors.grey.shade300,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Search",
                    style: TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: 17,
                    ),
                  ),
                  const Icon(
                    Icons.segment_rounded,
                    color: Colors.black87,
                    size: 30,
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  commonContainer(
                    fieldName: "All",
                  ),
                  commonContainer(fieldName: "Flight", isSelected: true),
                  commonContainer(
                    fieldName: "Cruise",
                  ),
                  commonContainer(
                    fieldName: "Train",
                  ),
                  commonContainer(
                    fieldName: "Bus",
                  ),
                  commonContainer(
                    fieldName: "Trains",
                  ),
                  commonContainer(
                    fieldName: "Texi",
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        commonCity(
                            cityName: "Paris",
                            price: "\$120",
                            image: "assets/images/paris.png"),
                        commonCity(
                            height: 190,
                            cityName: "Spain",
                            price: "\$340",
                            image: "assets/images/spain.png"),
                        commonCity(
                            cityName: "Rom",
                            height: 190,
                            price: "\$270",
                            image: "assets/images/rom.png"),
                        commonCity(
                            cityName: "Bali",
                            price: "\$500",
                            image: "assets/images/bali.png"),
                      ],
                    ),
                    Column(
                      children: [
                        commonCity(
                            cityName: "Rom",
                            height: 190,
                            price: "\$270",
                            image: "assets/images/rom.png"),
                        commonCity(
                            cityName: "Bali",
                            price: "\$500",
                            image: "assets/images/bali.png"),
                        commonCity(
                            cityName: "Paris",
                            price: "\$120",
                            image: "assets/images/paris.png"),
                        commonCity(
                            height: 190,
                            cityName: "Spain",
                            price: "\$340",
                            image: "assets/images/spain.png"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        alignment: Alignment.center,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.home_filled,
              color: Colors.deepOrange.shade600,
              size: 25,
            ),
            Icon(
              Icons.favorite_rounded,
              color: Colors.grey.shade500,
              size: 25,
            ),
            Icon(
              Icons.all_inbox,
              color: Colors.grey.shade500,
              size: 25,
            ),
            Icon(
              Icons.person,
              color: Colors.grey.shade500,
              size: 27,
            ),
          ],
        ),
      ),
    );
  }
}
