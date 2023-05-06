import 'package:flutter/material.dart';

class DoctorOppimentPage1 extends StatelessWidget {
  const DoctorOppimentPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 600,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.purple,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/doctor1.png"),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 450),
            padding:
                const EdgeInsets.only(top: 40, left: 25, right: 25, bottom: 25),
            height: 400,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Find your",
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "Perfect Doctor",
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "From our smart app you can find doctors nearby\nYour area we have list of nearby Hospitals, you\ncan find highly Qualified and top rated doctors.",
                  style: TextStyle(
                    wordSpacing: 5,
                    letterSpacing: 2,
                    color: Colors.black87,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Dancing Script",
                  ),
                ),
                Container(
                  height: 60,
                  width: 250,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    "Get Started",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
