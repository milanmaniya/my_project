import 'package:flutter/material.dart';
import 'package:my_project/practice/ui13/booking_tickets_page3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BookingTicketPage3(),
    );
  }
}
