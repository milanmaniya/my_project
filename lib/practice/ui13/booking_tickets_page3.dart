import 'package:flutter/material.dart';

class BookingTicketPage3 extends StatelessWidget {
  const BookingTicketPage3({super.key});

  @override
  Widget build(BuildContext context) {
    Widget commonTransport({
      required String name,
      final bool isContainerSelected = false,
    }) =>
        Container(
          margin: const EdgeInsets.only(left: 5, right: 5),
          alignment: Alignment.center,
          height: 40,
          width: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: (isContainerSelected)
                  ? Colors.red.shade400
                  : Colors.grey.shade300),
          child: Text(
            name,
            style: TextStyle(
              color: (isContainerSelected) ? Colors.white : Colors.black,
              fontSize: 16,
            ),
          ),
        );

    Widget commonCountry({
      required String countryName,
      required String image,
      required String ticketPrice,
      double height = 300,
      double width = 200,
    }) =>
        Container(
          alignment: Alignment.bottomCenter,
          height: height,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(image),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  countryName,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 37,
                  width: 80,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Text(
                    ticketPrice,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
          ),
        );

    Widget commonIcons({
      required IconData icon,
      bool isSelected = false,
    }) =>
        Icon(
          icon,
          color: (isSelected) ? Colors.red : Colors.grey.shade500,
          size: 28,
        );

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Where would\nyou like to travel?",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/accuntlogo.png")),
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Container(
                  height: 50,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Search",
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Icon(
                        Icons.notes_rounded,
                        color: Colors.black,
                        size: 25,
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      commonTransport(name: "All", isContainerSelected: false),
                      commonTransport(
                          name: "Flight", isContainerSelected: true),
                      commonTransport(
                          name: "Cruise", isContainerSelected: false),
                      commonTransport(
                          name: "Train", isContainerSelected: false),
                      commonTransport(name: "All", isContainerSelected: false),
                      commonTransport(
                          name: "Flight", isContainerSelected: true),
                      commonTransport(
                          name: "Cruise", isContainerSelected: false),
                      commonTransport(
                          name: "Train", isContainerSelected: false),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      commonCountry(
                          countryName: "Paris",
                          image: "assets/images/paris.png",
                          ticketPrice: "\$120"),
                      const SizedBox(
                        height: 10,
                      ),
                      commonCountry(
                          height: 170,
                          width: 200,
                          countryName: "Spain",
                          image: "assets/images/spain.png",
                          ticketPrice: "\$340"),
                    ],
                  ),
                  Column(
                    children: [
                      commonCountry(
                          height: 170,
                          width: 200,
                          countryName: "Rom",
                          image: "assets/images/rom.png",
                          ticketPrice: "\$270"),
                      const SizedBox(
                        height: 10,
                      ),
                      commonCountry(
                          countryName: "Bali",
                          image: "assets/images/bali.png",
                          ticketPrice: "\$500"),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        commonCountry(
                            height: 170,
                            width: 200,
                            countryName: "Paris",
                            image: "assets/images/paris.png",
                            ticketPrice: "\$120"),
                        const SizedBox(
                          height: 10,
                        ),
                        commonCountry(
                            countryName: "Spain",
                            image: "assets/images/spain.png",
                            ticketPrice: "\$340"),
                      ],
                    ),
                    Column(
                      children: [
                        commonCountry(
                            countryName: "Rom",
                            image: "assets/images/rom.png",
                            ticketPrice: "\$270"),
                        const SizedBox(
                          height: 10,
                        ),
                        commonCountry(
                            height: 170,
                            width: 200,
                            countryName: "Bali",
                            image: "assets/images/bali.png",
                            ticketPrice: "\$500"),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        alignment: Alignment.center,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16), topRight: Radius.circular(16)),
          color: Colors.grey.shade200,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            commonIcons(icon: Icons.home, isSelected: true),
            commonIcons(icon: Icons.favorite_rounded),
            commonIcons(icon: Icons.shield_sharp),
            commonIcons(icon: Icons.person_2_rounded),
          ],
        ),
      ),
    );
  }
}
