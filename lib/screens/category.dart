import 'package:flutter/material.dart';
import 'package:autism_app/components/my_btn.dart';
import 'package:autism_app/data/data.dart';
import 'package:autism_app/screens/content.dart';

class CategoryPage extends StatelessWidget {
  final bool isBoy;
  final String categoryName;

  const CategoryPage(
      {super.key, required this.categoryName, required this.isBoy});

  Color getBtnColor() {
    return isBoy ? const Color(0xFFA2C6E5) : const Color(0xFFCEA7CC);
  }

  @override
  Widget build(BuildContext context) {
    var category = data[categoryName];
    double screenWidth = MediaQuery.of(context).size.width;
    double btnSize = screenWidth * 0.3;

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: <Widget>[
            ...category['items'].map((item) {
              String label = item['label'];
              String imagePath = "assets/images/$categoryName/$label.png";
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: btnSize,
                  child: MyBtn(
                    imagePath: imagePath,
                    buttonText: label,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ContentPage(
                                  content: item,
                                  isBoy: isBoy,
                                  basePath: 'assets/images/$categoryName',
                                )),
                      );
                    },
                    backgroundColor: getBtnColor(), // Adjust as needed
                  ),
                ),
              );
            })
          ]),
        ),
      ),
    );
  }
}
