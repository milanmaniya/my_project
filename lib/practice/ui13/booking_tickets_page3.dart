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
          alignment: Alignment.center,
          height: 40,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: (isContainerSelected)
                ? Colors.grey.shade300
                : Colors.red.shade400,
          ),
          child: Text(
            name,
            style: TextStyle(
              color: (isContainerSelected) ? Colors.black : Colors.white,
              fontSize: 20,
            ),
          ),
        );

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Where would\nyou like to travel?",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
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
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 20),
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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  commonTransport(name: "All", isContainerSelected: false),
                  commonTransport(name: "Flight", isContainerSelected: true),
                  commonTransport(name: "Cruise", isContainerSelected: false),
                  commonTransport(name: "Train", isContainerSelected: false),
                  commonTransport(name: "All", isContainerSelected: false),
                  commonTransport(name: "Flight", isContainerSelected: true),
                  commonTransport(name: "Cruise", isContainerSelected: false),
                  commonTransport(name: "Train", isContainerSelected: false),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
