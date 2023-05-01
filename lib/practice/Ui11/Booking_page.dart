// ignore_for_file: file_names

import 'package:flutter/material.dart';

class BookingPageDemo extends StatelessWidget {
  const BookingPageDemo({super.key});

  @override
  Widget build(BuildContext context) {
    Widget bottom({
      required IconData icon,
      required String name,
      Color iconColor = Colors.white,
      double iconSize = 30,
      Color textColor = Colors.white,
      bool val = false,
    }) =>
        Container(
          height: 69,
          decoration: BoxDecoration(
            gradient: (val)
                ? const LinearGradient(
                    colors: [Colors.blue, Colors.white],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )
                : null,
          ),
          child: Column(
            children: [
              Icon(
                icon,
                color: iconColor,
                size: iconSize,
              ),
              Text(
                name,
                style: TextStyle(color: textColor, fontSize: 16),
              ),
            ],
          ),
        );

    Widget section({
      required IconData icon,
      required Color color,
      required String name,
      required Color iconColor,
    }) =>
        Column(
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: color,
                  border: Border.all(color: Colors.white, width: 3)),
              child: Icon(
                icon,
                color: iconColor,
                size: 40,
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              name,
              style: const TextStyle(color: Colors.black87, fontSize: 16),
            ),
          ],
        );

    Widget commonSection({
      required String name,
      required IconData icon,
    }) =>
        Row(
          children: [
            Icon(
              icon,
              color: Colors.black,
              size: 25,
            ),
            Text(
              name,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w800),
            )
          ],
        );

    return Scaffold(
      backgroundColor: Colors.indigo.shade600,
      appBar: AppBar(
        backgroundColor: Colors.indigo.shade600,
        leading: Icon(
          Icons.notes_sharp,
          color: Colors.pink.shade200,
          size: 30,
        ),
        actions: [
          const Icon(
            Icons.account_balance_wallet_rounded,
            color: Colors.white,
            size: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 20),
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(vertical: 10),
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white.withOpacity(0.250),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Icon(
                    Icons.account_circle_outlined,
                    color: Colors.white,
                  ),
                  Text(
                    "Biz",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 60,
        decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          bottom(name: "Home", icon: Icons.account_circle_outlined),
          bottom(name: "My Trips", icon: Icons.circle_outlined),
          bottom(name: "Offer", icon: Icons.local_offer),
          bottom(name: "Trip Ideas", icon: Icons.email),
          bottom(name: "Trip Money", icon: Icons.money_outlined)
        ]),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 50,
            decoration: BoxDecoration(
                color: Colors.white70, borderRadius: BorderRadius.circular(20)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                SizedBox(
                  width: 7,
                ),
                Icon(
                  Icons.account_circle_sharp,
                  color: Colors.red,
                  size: 37,
                ),
                SizedBox(
                  width: 50,
                ),
                Icon(
                  Icons.search_sharp,
                  color: Colors.black,
                  size: 28,
                ),
                Text(
                  "Try Delhi Activities",
                  style: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                  ),
                ),
              ],
            ),
          ),
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: 100,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Container(
                alignment: Alignment.topCenter,
                height: 125,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    section(
                        name: "Flights",
                        color: Colors.orange.shade900,
                        icon: Icons.flight,
                        iconColor: Colors.blue),
                    section(
                        name: "Hotels",
                        color: Colors.red,
                        icon: Icons.hotel,
                        iconColor: Colors.green),
                    section(
                        name: "Trains",
                        color: Colors.blue,
                        icon: Icons.train,
                        iconColor: Colors.yellow),
                    section(
                        name: "Holidays",
                        color: Colors.indigo,
                        icon: Icons.holiday_village,
                        iconColor: Colors.lightBlue.shade200)
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: 180,
            margin: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    bottom(
                        name: "Airpot Caps",
                        icon: Icons.car_rental,
                        iconColor: Colors.blue,
                        iconSize: 50,
                        textColor: Colors.black),
                    bottom(
                        name: "Self Drive",
                        icon: Icons.self_improvement,
                        iconColor: Colors.blue,
                        iconSize: 50,
                        textColor: Colors.black),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    bottom(
                        name: "Home Stays",
                        icon: Icons.home,
                        iconColor: Colors.red,
                        iconSize: 50,
                        textColor: Colors.black,
                        val: true),
                    bottom(
                        name: "NearBy Getways",
                        icon: Icons.campaign,
                        iconColor: Colors.red,
                        iconSize: 50,
                        textColor: Colors.black),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    bottom(
                        name: "Outstation Cabs",
                        icon: Icons.factory,
                        iconColor: Colors.yellow,
                        iconSize: 50,
                        textColor: Colors.black),
                    bottom(
                        name: "Self Drive",
                        icon: Icons.flight_takeoff,
                        iconColor: Colors.yellow,
                        iconSize: 50,
                        textColor: Colors.black),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    bottom(
                        name: "Tours",
                        icon: Icons.star,
                        iconColor: Colors.indigo,
                        iconSize: 50,
                        textColor: Colors.black),
                    bottom(
                        name: "Visa Services",
                        icon: Icons.book,
                        iconColor: Colors.indigo,
                        iconSize: 50,
                        textColor: Colors.black),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            margin: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                commonSection(
                    name: "Event & Festivals", icon: Icons.calendar_month),
                const VerticalDivider(
                    color: Colors.black, endIndent: 10, indent: 10),
                commonSection(
                    name: "Gift Card", icon: Icons.card_giftcard_rounded),
                const VerticalDivider(
                    color: Colors.black, endIndent: 10, indent: 10),
                commonSection(name: "Offer", icon: Icons.local_offer),
                const VerticalDivider(
                    color: Colors.black, endIndent: 10, indent: 10),
                commonSection(name: "Hydrabad", icon: Icons.train)
              ],
            ),
          ),
          const Text(
            "\t\t\tWelcome offer For you, Chocolate",
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
          ),
          Container(
            height: 150,
            margin: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                image: NetworkImage(
                  "https://m.media-amazon.com/images/I/61+69uQf7FL._UY879_.jpg",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
