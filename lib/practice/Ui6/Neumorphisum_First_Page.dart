// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'package:flutter/material.dart';

class Ui6 extends StatelessWidget {
  const Ui6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey.shade300),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Sign Up",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 25),
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    begin: const Alignment(-1, 1),
                    end: const Alignment(1, 1),
                    colors: [
                      Colors.grey.shade300,
                      const Color(0xFFFFFFFF),
                    ],
                  ),
                  boxShadow: const [
                    BoxShadow(
                        color: Color(0xffcccccc),
                        blurRadius: 40,
                        offset: Offset(20, 20)),
                    BoxShadow(
                        color: Color(0xffffffff),
                        blurRadius: 40,
                        offset: Offset(-20, -20))
                  ]),
              child: Icon(
                Icons.tag_faces_outlined,
                size: 180,
                color: Colors.grey[400],
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: 30,
                  width: 20,
                ),
                Text(
                  "First Name",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xffcccccc),
                    offset: Offset(-5, -10),
                  ),
                  BoxShadow(
                    color: Color(0xffffffff),
                    blurRadius: 7,
                    // offset: Offset(10, 10),
                  ),
                ],
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: 40,
                  width: 20,
                ),
                Text(
                  "Last Name",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xffcccccc),
                    offset: Offset(-5, -10),
                  ),
                  BoxShadow(
                    color: Color(0xffffffff),
                    blurRadius: 7,
                    // offset: Offset(10, 10),
                  ),
                ],
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: 40,
                  width: 20,
                ),
                Text(
                  "Age",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const SizedBox(
                  width: 50,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(top: 20),
                  height: 30,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0xffcccccc),
                        offset: Offset(3, 3),
                        blurRadius: 1.5,
                      ),
                      BoxShadow(
                        color: Color(0xffffffff),
                        offset: Offset(-1, -1),
                        blurRadius: 0.6,
                      ),
                    ],
                  ),
                  child: Container(
                    width: 28,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey[300],
                      shape: BoxShape.circle,
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xffcccccc),
                          offset: Offset(1, 1),
                          blurRadius: 1.5,
                        ),
                        BoxShadow(
                          color: Color(0xffffffff),
                          offset: Offset(-1, -1),
                          blurRadius: 0.6,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 50,
                ),
                const Text(
                  "12",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: 50,
                  width: 20,
                ),
                Text(
                  "Gender",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none),
                ),
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 50,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 25),
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      begin: const Alignment(-1, 1),
                      end: const Alignment(1, 1),
                      colors: [
                        Colors.grey.shade300,
                        const Color(0xFFFFFFFF),
                      ],
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0xffcccccc),
                        offset: Offset(-3, -3),
                        blurRadius: 1.5,
                      ),
                      BoxShadow(
                        color: Color(0xffffffff),
                        offset: Offset(2, 2),
                        blurRadius: 0.6,
                      ),
                    ],
                  ),
                  child: Icon(
                    Icons.person_pin_rounded,
                    size: 35,
                    color: Colors.grey[400],
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 25),
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        begin: const Alignment(-1, 1),
                        end: const Alignment(1, 1),
                        colors: [
                          Colors.grey.shade300,
                          const Color(0xFFFFFFFF),
                        ],
                      ),
                      boxShadow: const [
                        BoxShadow(
                            color: Color(0xffcccccc),
                            blurRadius: 40,
                            offset: Offset(20, 20)),
                        BoxShadow(
                            color: Color(0xffffffff),
                            blurRadius: 40,
                            offset: Offset(-20, -20))
                      ]),
                  child: Icon(
                    Icons.person_pin_circle_outlined,
                    size: 35,
                    color: Colors.grey[400],
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 25),
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      begin: const Alignment(-1, 1),
                      end: const Alignment(1, 1),
                      colors: [
                        Colors.grey.shade300,
                        const Color(0xFFFFFFFF),
                      ],
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0xffcccccc),
                        offset: Offset(-3, -3),
                        blurRadius: 1.5,
                      ),
                      BoxShadow(
                        color: Color(0xffffffff),
                        offset: Offset(2, 2),
                        blurRadius: 0.6,
                      ),
                    ],
                  ),
                  child: Icon(
                    Icons.group_outlined,
                    size: 35,
                    color: Colors.grey[400],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
