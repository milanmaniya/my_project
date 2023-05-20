import 'package:flutter/material.dart';

Widget commonTickets(
        {required String takeOffTime, required String takeInTime}) =>
    Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20, top: 15),
          padding: const EdgeInsets.all(17),
          height: 150,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.circle_outlined,
                    color: Colors.red.shade500,
                    size: 16,
                  ),
                  const Text(
                    "------------------",
                    style: TextStyle(
                      color: Colors.black54,
                      letterSpacing: 6,
                      fontSize: 16,
                    ),
                  ),
                  Icon(
                    Icons.airplanemode_active_outlined,
                    color: Colors.red.shade500,
                    size: 16,
                  ),
                  const Text(
                    "------------------",
                    style: TextStyle(
                      color: Colors.black54,
                      letterSpacing: 6,
                      fontSize: 16,
                    ),
                  ),
                  const Icon(
                    Icons.circle_outlined,
                    color: Colors.black,
                    size: 16,
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "New York",
                    style: TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "\t\t\t\t12h",
                    style: TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "Great Britain",
                    style: TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    takeOffTime,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    takeInTime,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "4.26.2021, Tue",
                    style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "4.27.2021, Wed",
                    style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 154),
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: const Text(
            "------------------------------------------",
            style: TextStyle(
              color: Colors.black54,
              letterSpacing: 6,
              fontSize: 16,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          height: 50,
          margin: const EdgeInsets.only(left: 20, right: 20, top: 165),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "American AirLines",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey.shade500,
                ),
              ),
              const Text(
                "\$120",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
