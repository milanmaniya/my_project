import 'package:flutter/material.dart';

class CommonWidgetDemo extends StatelessWidget {
  const CommonWidgetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    Widget common({
      required String name,
      required Color co,
      required IconData ic,
      required BorderRadiusGeometry bor,
      required TextStyle sty,
    }) {
      return Container(
        height: 160,
        width: 160,
        decoration: BoxDecoration(color: co, borderRadius: bor),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              ic,
              color: Colors.white,
              size: 50,
            ),
            Text(
              name,
              style: sty,
            )
          ],
        ),
      );
    }

    Widget common1({
      required IconData icon,
      required String name,
      required String subtitle,
      required String money,
      required String date,
      required Color color,
      required Color iconContainerColor,
      required EdgeInsetsGeometry margin,
      required BorderRadiusGeometry radius,
    }) {
      return Container(
        height: 160,
        margin: margin,
        decoration: BoxDecoration(borderRadius: radius, color: color),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: iconContainerColor),
              child: Icon(
                icon,
                color: Colors.white,
                size: 35,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    height: 1.2,
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  subtitle,
                  style: const TextStyle(color: Colors.white, fontSize: 12),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  money,
                  style: const TextStyle(
                      height: 1.2,
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  date,
                  style: const TextStyle(color: Colors.white, fontSize: 12),
                )
              ],
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                " \$1200",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                Icons.menu,
                size: 25,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              common(
                name: "Load Money",
                co: Colors.redAccent,
                ic: Icons.search_outlined,
                bor: const BorderRadius.only(
                  topRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                ),
                sty: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
              common(
                name: "Merchant Money",
                co: Colors.green,
                ic: Icons.money_outlined,
                bor: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                sty: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              common(
                name: "Send Money",
                co: Colors.blue,
                ic: Icons.print,
                bor: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                sty: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
              common(
                name: "Request Money",
                co: Colors.deepPurple,
                ic: Icons.image,
                bor: const BorderRadius.only(
                  topRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                ),
                sty: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          common1(
            color: Colors.red,
            date: "19/01/2022",
            icon: Icons.search_rounded,
            name: "Shell Darwen",
            margin: const EdgeInsets.symmetric(horizontal: 60),
            iconContainerColor: Colors.green,
            money: "\$30",
            subtitle: "Marchent Payment",
            radius: BorderRadius.circular(20),
          ),
          common1(
            color: Colors.deepPurple,
            date: "23/01/2022",
            icon: Icons.image,
            name: "John Doe",
            margin: const EdgeInsets.symmetric(horizontal: 60),
            iconContainerColor: Colors.blue,
            money: "\$50",
            subtitle: "Marchent Payment",
            radius: BorderRadius.circular(20),
          ),
        ],
      ),
    );
  }
}
