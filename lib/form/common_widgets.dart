import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final String name;
  final VoidCallback onTap;

  const CommonButton({super.key, required this.name, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ElevatedButton(
        onPressed: onTap,
        child: Text(
          name,
          style: const TextStyle(
              color: Colors.black54,
              fontSize: 26,
              fontWeight: FontWeight.bold,
              fontFamily: 'Dancing Script',
              ),
        ),
      ),
    );
  }
}
