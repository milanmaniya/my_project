import 'package:flutter/material.dart';

class DoctorOppimentPage2 extends StatelessWidget {
  const DoctorOppimentPage2({super.key});

  @override
  Widget build(BuildContext context) {
    Widget commonDateDays({
      required String days,
      required String date,
      bool isSelected = false,
    }) =>
        Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          alignment: Alignment.center,
          height: 75,
          width: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: (isSelected) ? Colors.indigo : Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                days,
                style: TextStyle(
                  color: (isSelected) ? Colors.white : Colors.black,
                  fontSize: 16,
                ),
              ),
              Text(
                date,
                style: TextStyle(
                  color: (isSelected) ? Colors.white : Colors.black,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        );

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            Container(
              height: 350,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/doctor2.png"),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 300),
              height: 500,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: Colors.grey.shade300,
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Schedule",
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        commonDateDays(date: "12", days: "Mon"),
                        commonDateDays(
                            date: "13", days: "Tu", isSelected: true),
                        commonDateDays(date: "14", days: "Wed"),
                        commonDateDays(date: "15", days: "Thu"),
                        commonDateDays(date: "16", days: "Fri"),
                        commonDateDays(date: "17", days: "Sat"),
                        commonDateDays(date: "18", days: "Sun"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        const Text(
                          "20 Doctors Available",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Expanded(
                          child: Stack(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: 35,
                                width: 35,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        "assets/images/accuntlogo.png"),
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 35,
                                margin: const EdgeInsets.only(left: 25),
                                width: 35,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        "assets/images/accuntlogo.png"),
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 35,
                                width: 35,
                                margin: const EdgeInsets.only(left: 50),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        "assets/images/accuntlogo.png"),
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 35,
                                width: 35,
                                margin: const EdgeInsets.only(left: 75),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        "assets/images/accuntlogo.png"),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Icon(
                          Icons.more_vert,
                          color: Colors.black,
                          size: 25,
                        ),
                      ],
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(top: 20),
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.indigo,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const SizedBox(
                            width: 5,
                          ),
                          const Icon(
                            Icons.call_rounded,
                            color: Colors.white,
                            size: 30,
                          ),
                          Container(
                            height: 100,
                            width: 410,
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            margin: const EdgeInsets.only(left: 15),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Row(
                              children: [
                                CircleAvatar(
                                  radius: 28,
                                  backgroundImage: AssetImage(
                                      "assets/images/accuntlogo.png"),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Dr. Luna",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text("0.3 km away, Prime Medical"),
                                      Text("MBBS(FPCS)"),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Icon(
                                  Icons.favorite_outline_rounded,
                                  color: Colors.black,
                                  size: 25,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 100,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      margin: const EdgeInsets.symmetric(vertical: 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Row(
                        children: [
                           CircleAvatar(
                            radius: 28,
                            backgroundImage:
                                AssetImage("assets/images/accuntlogo.png"),
                          ),
                           SizedBox(
                            width: 30,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Dr. Luna",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text("0.3 km away, Prime Medical"),
                                Text("MBBS(FPCS)"),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Icon(
                            Icons.favorite_outline_rounded,
                            color: Colors.black,
                            size: 25,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.grey.shade300,
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Icon(
              Icons.home_outlined,
              color: Colors.black,
              size: 28,
            ),
            const Icon(
              Icons.monitor_heart_outlined,
              color: Colors.black,
              size: 28,
            ),
            Container(
              height: 28,
              width: 28,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.indigo,
              ),
              alignment: Alignment.center,
              child: const Icon(
                Icons.add,
                color: Colors.white,
                size: 22,
              ),
            ),
            const Icon(
              Icons.favorite_outline,
              color: Colors.black,
              size: 28,
            ),
            const Icon(
              Icons.person,
              color: Colors.black,
              size: 28,
            ),
          ],
        ),
      ),
    );
  }
}
