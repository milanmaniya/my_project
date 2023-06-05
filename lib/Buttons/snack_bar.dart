import 'package:flutter/material.dart';

class SnackBarDemo extends StatelessWidget {
  const SnackBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                closeIconColor: Colors.red,
                showCloseIcon: true,
                dismissDirection: DismissDirection.horizontal,
                duration: const Duration(seconds: 6),
                action: SnackBarAction(
                  label: 'hello',
                  onPressed: () {},
                ),
                content: const Text('Hello snack bar'),
              ),
            );
          },
          child: const Text('Snack Bar'),
        ),
      ),
    );
  }
}
