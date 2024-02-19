import 'package:flutter/material.dart';

class MyBackButton extends StatelessWidget {
  final BuildContext context;
  const MyBackButton({super.key, required this.context});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      icon: const Icon(Icons.arrow_back),
      label: const Text(
        'رجوع',
        style: TextStyle(fontSize: 20),
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
}
