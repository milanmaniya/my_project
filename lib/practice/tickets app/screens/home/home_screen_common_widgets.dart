import 'package:flutter/material.dart';

Widget commonContainer({
  required String fieldName,
  bool isSelected = false,
}) =>
    Container(
      height: 35,
      margin: const EdgeInsets.symmetric(horizontal: 7, vertical: 8),
      width: 100,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color:
              (isSelected) ? Colors.deepOrange.shade600 : Colors.grey.shade300),
      child: Text(
        fieldName,
        style: TextStyle(color: (isSelected) ? Colors.white : Colors.black),
      ),
    );

Widget commonCity({
  required String image,
  required String cityName,
  required String price,
  double height = 280,
}) =>
    Container(
      height: height,
      width: 200,
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 13),
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(17),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(image),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            cityName,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          Container(
            height: 30,
            width: 50,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17),
              color: Colors.white,
            ),
            child: Text(
              price,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
