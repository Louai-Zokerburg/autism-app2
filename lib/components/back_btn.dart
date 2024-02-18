import 'package:flutter/material.dart';

class MyBackButton extends StatelessWidget {
  final BuildContext context;
  const MyBackButton({super.key, required this.context});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
}