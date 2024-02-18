import 'package:flutter/material.dart';
import 'package:autism_app/components/my_btn.dart';
import 'package:autism_app/screens/category.dart';

class Home extends StatelessWidget {
  final bool isBoy;

  const Home({super.key, required this.isBoy});

  Color getBtnColor() {
    return isBoy ? const Color(0xFFA2C6E5) : const Color(0xFFCEA7CC);
  }

  String getFeelImagePath() {
    return isBoy
        ? 'assets/images/home/mother-boy-feel.png'
        : 'assets/images/home/mother-girl-feel.png';
  }

  String getLearnImagePath() {
    return isBoy
        ? 'assets/images/home/mother-boy-learn.png'
        : 'assets/images/home/mother-girl-learn.png';
  }

  String getWantImagePath() {
    return isBoy
        ? 'assets/images/home/mother-boy-want.png'
        : 'assets/images/home/mother-girl-want.png';
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double btnSize = screenWidth * 0.3;
    double spacing = screenWidth * 0.03;
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: btnSize,
              child: MyBtn(
                imagePath: getWantImagePath(),
                buttonText: 'حاب',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CategoryPage(
                            categoryName: 'want', isBoy: isBoy)),
                  );
                },
                backgroundColor: getBtnColor(),
              ),
            ),
            SizedBox(width: spacing),
            SizedBox(
              width: btnSize,
              child: MyBtn(
                imagePath: getLearnImagePath(),
                buttonText: 'نتعلم',
                onPressed: () {
                 Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CategoryPage(
                            categoryName: 'learn', isBoy: isBoy)),
                  );
                },
                backgroundColor: getBtnColor(),
              ),
            ),
            SizedBox(width: spacing), // Adjust the space between circles
            SizedBox(
              width: btnSize,
              child: MyBtn(
                imagePath: getFeelImagePath(),
                buttonText: 'نحس',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CategoryPage(
                            categoryName: 'feel', isBoy: isBoy)),
                  );
                },
                backgroundColor: getBtnColor(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
