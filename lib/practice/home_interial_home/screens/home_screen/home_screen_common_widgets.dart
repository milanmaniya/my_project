import 'package:flutter/material.dart';

Widget commonHome({
  required String name,
  required String numberOfDevice,
  required IconData icon,
  bool isSelected = false,
}) =>
    Container(
      height: 140,
      width: 140,
      padding: const EdgeInsets.only(left: 10, bottom: 17),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: (isSelected)
                  ? Colors.deepOrange.shade400
                  : Colors.grey.shade300),
          //color: Colors.deepOrange.shade400,
          color: (isSelected) ? Colors.deepOrange.shade400 : Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Icon(
              icon,
              color: (isSelected) ? Colors.white : Colors.deepOrange.shade400,
              size: 30,
            ),
          ),
          Text(
            name,
            style: TextStyle(
              color: (isSelected) ? Colors.white : Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            numberOfDevice,
            style: TextStyle(
              color: (isSelected) ? Colors.black : Colors.grey.shade400,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
