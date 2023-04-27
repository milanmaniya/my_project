import 'package:flutter/material.dart';

class Ui7 extends StatelessWidget {
  const Ui7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            color: const Color.fromRGBO(18, 140, 126, 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "WhatsApp",
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Icon(
                              Icons.camera_alt_outlined,
                              size: 20,
                              color: Colors.white70,
                            ),
                            Icon(
                              Icons.search,
                              size: 20,
                              color: Colors.white70,
                            ),
                            Icon(
                              Icons.more_vert,
                              size: 20,
                              color: Colors.white70,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Icon(
                      Icons.groups_3_rounded,
                      size: 22,
                      color: Colors.white70,
                    ),
                    Text(
                      "Chats",
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Status",
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Calls",
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 684,
            width: double.infinity,
            color: const Color.fromRGBO(7, 94, 84, 10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
                    height: 60,
                    child: Row(
                      children: [
                        const CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://as1.ftcdn.net/v2/jpg/02/01/92/42/1000_F_201924201_P6mGeFsOkpfcRGXWe3dC9uOey22lWLUm.jpg"),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Maniya Milan",
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Hyy, Milan",
                              style: TextStyle(color: Colors.white60),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 260,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              "9:58 am",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            CircleAvatar(
                              radius: 9,
                              backgroundColor: Colors.green.shade500,
                              child: const Text(
                                "1",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 15, left: 20, right: 20),
                    height: 60,
                    child: Row(
                      children: [
                        const CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://as1.ftcdn.net/v2/jpg/02/01/92/42/1000_F_201924201_P6mGeFsOkpfcRGXWe3dC9uOey22lWLUm.jpg"),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Yash Suvagiya",
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Hyy, Yash Good Morning!",
                              style: TextStyle(color: Colors.white60),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 180,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Text(
                              "10:56 pm",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
                    height: 60,
                    child: Row(
                      children: [
                        const CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://as1.ftcdn.net/v2/jpg/02/01/92/42/1000_F_201924201_P6mGeFsOkpfcRGXWe3dC9uOey22lWLUm.jpg"),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Maniya Milan",
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Hyy, Milan",
                              style: TextStyle(color: Colors.white60),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 260,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              "9:58 am",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            CircleAvatar(
                              radius: 9,
                              backgroundColor: Colors.green.shade500,
                              child: const Text(
                                "1",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
                    height: 60,
                    child: Row(
                      children: [
                        const CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://as1.ftcdn.net/v2/jpg/02/01/92/42/1000_F_201924201_P6mGeFsOkpfcRGXWe3dC9uOey22lWLUm.jpg"),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Maniya Milan",
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Hyy, Milan",
                              style: TextStyle(color: Colors.white60),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 260,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              "9:58 am",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            CircleAvatar(
                              radius: 9,
                              backgroundColor: Colors.green.shade500,
                              child: const Text(
                                "1",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
                    height: 60,
                    child: Row(
                      children: [
                        const CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://as1.ftcdn.net/v2/jpg/02/01/92/42/1000_F_201924201_P6mGeFsOkpfcRGXWe3dC9uOey22lWLUm.jpg"),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Maniya Milan",
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Hyy, Milan",
                              style: TextStyle(color: Colors.white60),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 260,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              "9:58 am",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            CircleAvatar(
                              radius: 9,
                              backgroundColor: Colors.green.shade500,
                              child: const Text(
                                "1",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
                    height: 60,
                    child: Row(
                      children: [
                        const CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://as1.ftcdn.net/v2/jpg/02/01/92/42/1000_F_201924201_P6mGeFsOkpfcRGXWe3dC9uOey22lWLUm.jpg"),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Maniya Milan",
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Hyy, Milan",
                              style: TextStyle(color: Colors.white60),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 260,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              "9:58 am",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            CircleAvatar(
                              radius: 9,
                              backgroundColor: Colors.green.shade500,
                              child: const Text(
                                "1",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
                    height: 60,
                    child: Row(
                      children: [
                        const CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://as1.ftcdn.net/v2/jpg/02/01/92/42/1000_F_201924201_P6mGeFsOkpfcRGXWe3dC9uOey22lWLUm.jpg"),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Maniya Milan",
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Hyy, Milan",
                              style: TextStyle(color: Colors.white60),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 260,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              "9:58 am",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            CircleAvatar(
                              radius: 9,
                              backgroundColor: Colors.green.shade500,
                              child: const Text(
                                "1",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
                    height: 60,
                    child: Row(
                      children: [
                        const CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://as1.ftcdn.net/v2/jpg/02/01/92/42/1000_F_201924201_P6mGeFsOkpfcRGXWe3dC9uOey22lWLUm.jpg"),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Maniya Milan",
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Hyy, Milan",
                              style: TextStyle(color: Colors.white60),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 260,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              "9:58 am",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            CircleAvatar(
                              radius: 9,
                              backgroundColor: Colors.green.shade500,
                              child: const Text(
                                "1",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
                    height: 60,
                    child: Row(
                      children: [
                        const CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://as1.ftcdn.net/v2/jpg/02/01/92/42/1000_F_201924201_P6mGeFsOkpfcRGXWe3dC9uOey22lWLUm.jpg"),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Maniya Milan",
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Hyy, Milan",
                              style: TextStyle(color: Colors.white60),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 260,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              "9:58 am",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            CircleAvatar(
                              radius: 9,
                              backgroundColor: Colors.green.shade500,
                              child: const Text(
                                "1",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
                    height: 60,
                    child: Row(
                      children: [
                        const CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://as1.ftcdn.net/v2/jpg/02/01/92/42/1000_F_201924201_P6mGeFsOkpfcRGXWe3dC9uOey22lWLUm.jpg"),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Maniya Milan",
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Hyy, Milan",
                              style: TextStyle(color: Colors.white60),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 260,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              "9:58 am",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            CircleAvatar(
                              radius: 9,
                              backgroundColor: Colors.green.shade500,
                              child: const Text(
                                "1",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
                    height: 60,
                    child: Row(
                      children: [
                        const CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://as1.ftcdn.net/v2/jpg/02/01/92/42/1000_F_201924201_P6mGeFsOkpfcRGXWe3dC9uOey22lWLUm.jpg"),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Maniya Milan",
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Hyy, Milan",
                              style: TextStyle(color: Colors.white60),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 260,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              "9:58 am",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            CircleAvatar(
                              radius: 9,
                              backgroundColor: Colors.green.shade500,
                              child: const Text(
                                "1",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
