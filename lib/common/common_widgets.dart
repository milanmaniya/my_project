import 'package:flutter/material.dart';

Widget commonOrder({
  required String quantity,
  required String number,
  required String price,
}) =>
    Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(bottom: 70),
      height: 175,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            quantity,
            style: const TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 35,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey.shade400, width: 2),
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Icon(
                        Icons.arrow_left_outlined,
                        color: Colors.grey,
                        size: 20,
                      ),
                      Text(
                        number,
                        style: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      const Icon(
                        Icons.arrow_right_outlined,
                        color: Colors.black,
                        size: 20,
                      )
                    ]),
              ),
              Text(
                price,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.center,
                height: 35,
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.orangeAccent.shade100),
                child: const Text(
                  "Add to cart",
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Icon(
                Icons.favorite,
                color: Colors.red.shade900,
                size: 25,
              )
            ],
          ),
        ],
      ),
    );
