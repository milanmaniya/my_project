// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent.shade100,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(
                  Icons.notes_outlined,
                  color: Colors.black87,
                  size: 35,
                ),
                Icon(
                  Icons.store_mall_directory_rounded,
                  size: 35,
                  color: Colors.black87,
                ),
              ],
            ),
            const Text(
              "Hi, Milan",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Row(
              children: const [
                Text(
                  "What's today's taste? ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(
                  width: 7,
                ),
                Icon(
                  Icons.sentiment_satisfied_alt_rounded,
                  color: Colors.black,
                  size: 23,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  alignment: Alignment.center,
                  height: 200,
                  width: 200,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.orangeAccent,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Dried apricots",
                        style: TextStyle(color: Colors.white),
                      ),
                      const Text(
                        "\$9.43",
                        style: TextStyle(color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.star,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.star_half_outlined,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      Container(
                        height: 40,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.shopping_cart,
                              color: Colors.black,
                            ),
                            Text(
                              "Add to cart",
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
