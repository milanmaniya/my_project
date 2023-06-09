import 'package:flutter/material.dart';

class Ui1 extends StatelessWidget {
  const Ui1({super.key});

  @override
  Widget build(BuildContext context) {
    const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.search_outlined,
                      color: Colors.white,
                      size: 50,
                    ),
                    Text(
                      "Load Money",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )
                  ],
                );
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                " \$1200",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                Icons.menu,
                size: 20,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 160,
                width: 160,
                decoration: const BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                  ),
                ),
              
              ),
              Container(
                height: 160,
                width: 160,
                decoration: const BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.money_outlined,
                      color: Colors.white,
                      size: 50,
                    ),
                    Text(
                      "Merchant Money",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 160,
                width: 160,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.print,
                      color: Colors.white,
                      size: 50,
                    ),
                    Text(
                      "Send Money",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Container(
                height: 160,
                width: 160,
                decoration: const BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                  ),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.image,
                      color: Colors.white,
                      size: 50,
                    ),
                    Text(
                      "Request Money",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: 160,
            margin: const EdgeInsets.symmetric(horizontal: 60),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.red.shade400,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.green),
                  child: const Icon(
                    Icons.search_rounded,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Shell Darwen",
                      style: TextStyle(
                        height: 1.2,
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Merchant Payment",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )
                  ],
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "\$30",
                      style: TextStyle(
                          height: 1.2,
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "19/01/2022",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 160,
            margin: const EdgeInsets.symmetric(horizontal: 60),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.deepPurpleAccent,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.blue),
                  child: const Icon(
                    Icons.image,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "John Doe",
                      style: TextStyle(
                        height: 1.2,
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Merchant Payment",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )
                  ],
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "\$50",
                      style: TextStyle(
                          height: 1.2,
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "23/01/2022",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
