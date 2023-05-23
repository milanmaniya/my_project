// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    Widget commonIconList({
      required String image,
      bool isSelected = false,
    }) =>
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isSelected ? Colors.orange : Colors.grey,
              ),
            ),
            isSelected
                ? Image.asset(
                    image,
                    height: 55,
                  )
                : Image.asset(
                    image,
                    height: 30,
                  )
          ],
        );

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
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
            const Row(
              children: [
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.orangeAccent.shade400,
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset("assets/images/icon.png"),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "Dry Fruits",
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 14,
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 80,
                    ),
                    Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            Container(
                              alignment: Alignment.bottomRight,
                              margin:
                                  const EdgeInsets.only(right: 10, bottom: 5),
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey.shade500),
                            ),
                            Image.asset(
                              "assets/images/icon1.png",
                              height: 35,
                            ),
                          ],
                        ),
                        const Text(
                          "Nuts",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Container(
                          height: 20,
                          width: 20,
                          decoration: const BoxDecoration(
                            gradient: RadialGradient(
                                colors: [
                                  Colors.white,
                                  Colors.amber,
                                  Colors.white
                                ],
                                center: Alignment.bottomLeft,
                                stops: [0.0005, 5, 0.1]),
                          ),
                        ),
                        const Icon(Icons.search, size: 35),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.orange.shade700,
                      radius: 180,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 45),
                      height: 225,
                      width: 175,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Dried apricots",
                            style: TextStyle(color: Colors.white),
                          ),
                          const Text(
                            "\$9.43",
                            style: TextStyle(color: Colors.white),
                          ),
                          const Row(
                            children: [
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
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.shopping_cart,
                                  color: Colors.black,
                                ),
                                SizedBox(
                                  width: 10,
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
                    Container(
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.only(left: 360),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Icon(
                        Icons.favorite,
                        color: Colors.red.shade900,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 335),
                      height: 170,
                      child: Image.asset("assets/images/apricot.png"),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                commonIconList(
                    image: "assets/images/cheery.png", isSelected: false),
                commonIconList(
                    image: "assets/images/apricot.png", isSelected: true),
                commonIconList(
                    image: "assets/images/plumes.png", isSelected: false),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.grey.shade400, width: 2),
                  ),
                  child: Icon(
                    Icons.add,
                    color: Colors.grey.shade400,
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
