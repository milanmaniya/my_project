import 'package:flutter/material.dart';
import 'package:my_project/common/common_widgets.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    Widget commonCategories({
      required String name,
      required String value,
    }) =>
        Container(
          alignment: Alignment.center,
          height: 100,
          width: 100,
          decoration:
              BoxDecoration(border: Border.all(color: Colors.white, width: 2)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(color: Colors.white, fontSize: 16),
              ),
              Text(
                value,
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
            ],
          ),
        );

    return Scaffold(
      backgroundColor: Colors.orange.shade700,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  "assets/images/apricot.png",
                  height: 200,
                ),
                Image.asset(
                  "assets/images/apricot.png",
                  height: 200,
                ),
              ],
            ),
            const Text(
              "Dried apricots",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Artificial Selection\t\t-Taste Sweet",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
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
              ],
            ),
            const Text(
              "Capacity",
              style: TextStyle(
                  color: Colors.white70,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                commonCategories(name: "Calories", value: "90"),
                commonCategories(name: "Additive", value: "3%"),
                commonCategories(name: "Vitamins", value: "8%"),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            height: 90,
            color: Colors.black,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.shopping_bag_outlined,
                      color: Colors.white70,
                      size: 35,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Cart",
                      style: TextStyle(color: Colors.white70, fontSize: 16),
                    ),
                  ],
                ),
                Image.asset(
                  "assets/images/cheery.png",
                  height: 45,
                )
              ],
            ),
          ),
          commonOrder(quantity: "Quantity(300g)", number: "1", price: "\$9.43")
        ],
      ),
    );
  }
}
