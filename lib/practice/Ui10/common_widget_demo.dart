import 'package:flutter/material.dart';

class CommonWidgetDemo extends StatelessWidget {
  const CommonWidgetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    Widget common({
      required String name,
      required Color color,
      required IconData icon,
      double topLeft = 0,
      double topRight = 0,
      double botttomLeft = 0,
      double bottomRight = 0,
      required TextStyle sty,
    }) {
      return Container(
        height: 160,
        width: 160,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(topRight),
            topLeft: Radius.circular(topLeft),
            bottomRight: Radius.circular(bottomRight),
            bottomLeft: Radius.circular(botttomLeft),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              icon,
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
      required String title,
      required String subtitle,
      required String money,
      required String date,
      required Color backGroundcolor,
      required Color iconContainerColor,
      double margin = 0,
      double radius = 0,
    }) {
      return Container(
        height: 160,
        margin: EdgeInsets.symmetric(horizontal: margin),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
            color: backGroundcolor),
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
                  title,
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
                color: Colors.redAccent,
                icon: Icons.search_outlined,
                topRight: 30,
                botttomLeft: 30,
                sty: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
              common(
                name: "Merchant Money",
                color: Colors.green,
                icon: Icons.money_outlined,
                topLeft: 30,
                bottomRight: 30,
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
                color: Colors.blue,
                icon: Icons.print,
                topLeft: 30,
                bottomRight: 30,
                sty: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
              common(
                name: "Request Money",
                color: Colors.deepPurple,
                icon: Icons.image,
                topRight: 30,
                botttomLeft: 30,
                sty: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          common1(
            backGroundcolor: Colors.red,
            date: "19/01/2022",
            icon: Icons.search_rounded,
            title: "Shell Darwen",
            margin: 60,
            iconContainerColor: Colors.green,
            money: "\$30",
            subtitle: "Marchent Payment",
            radius: 20,
          ),
          common1(
            backGroundcolor: Colors.deepPurple,
            date: "23/01/2022",
            icon: Icons.image,
            title: "John Doe",
            margin: 60,
            iconContainerColor: Colors.blue,
            money: "\$50",
            subtitle: "Marchent Payment",
            radius: 20,
          ),
        ],
      ),
    );
  }
}
