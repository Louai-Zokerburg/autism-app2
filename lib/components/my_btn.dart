import 'package:flutter/material.dart';

class MyBtn extends StatelessWidget {
  
  final String imagePath;
  final String buttonText;
  final VoidCallback onPressed;
  final Color backgroundColor;

  const MyBtn({
    Key? key,
    required this.imagePath,
    required this.buttonText,
    required this.onPressed,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double btnSize = screenWidth * 0.3;

    return SizedBox(
      width: btnSize,
      height: btnSize,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(btnSize / 2),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              imagePath,
              width: btnSize / 1.3,
              height: btnSize / 1.3,
            ),
            const SizedBox(height: 8.0),
            Text(
              buttonText,
              style: const TextStyle(color: Colors.black, fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
