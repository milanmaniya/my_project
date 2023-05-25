import 'package:flutter/material.dart';

Widget commonMonths({
  required String nameMonth,
  bool isActivate = false,
}) =>
    Text(
      nameMonth,
      style: TextStyle(
        color: (isActivate) ? Colors.purple.shade700 : Colors.grey.shade800,
        fontSize: 16,
        fontWeight: isActivate ? FontWeight.bold : FontWeight.w600,
      ),
    );

class Indicatorcreen extends StatelessWidget {
  const Indicatorcreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: Colors.black87,
                    size: 25,
                  ),
                  Icon(
                    Icons.settings,
                    color: Colors.black87,
                    size: 30,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              height: 50,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.deepPurple.shade200,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: const Text(
                        "Income",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  const Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Outcome",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Text(
              "Saved This Month",
              style: TextStyle(
                color: Colors.grey.shade800,
                fontSize: 17,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "\$25,999.00",
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                commonMonths(
                  nameMonth: "Day",
                ),
                commonMonths(
                  nameMonth: "Week",
                ),
                commonMonths(nameMonth: "Month", isActivate: true),
                commonMonths(
                  nameMonth: "Year",
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              height: 400,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "assets/images/indicator_graph.png",
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.deepPurple.shade700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
