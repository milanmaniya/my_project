import 'package:flutter/material.dart';

class SubscriptionDemo extends StatefulWidget {
  const SubscriptionDemo({super.key});

  @override
  State<SubscriptionDemo> createState() => _SubscriptionDemoState();
}

class _SubscriptionDemoState extends State<SubscriptionDemo> {
  @override
  Widget build(BuildContext context) {
    return const Center(
       child: Text(
                  'Subscription Screen',
                  style: TextStyle(
                    color: Colors.black87,
                    fontFamily: 'Dancing Script',
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
    );
  }
}