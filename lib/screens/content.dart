import 'package:flutter/material.dart';
import 'package:autism_app/components/my_btn.dart';

class ContentPage extends StatelessWidget {
  final bool isBoy;
  final dynamic content;
  final String basePath;

  const ContentPage(
      {super.key, required this.content, required this.isBoy, required this.basePath});

  Color getBtnColor() {
    return isBoy ? const Color(0xFFA2C6E5) : const Color(0xFFCEA7CC);
  }

  
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double btnSize = screenWidth * 0.3;

    var contentT = content['label'];

    var i = 1;

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: <Widget>[
            ...content['items'].map((item) {

              String imagePath = "$basePath/$contentT/$i.png";
              i++;
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: btnSize,
                  child: MyBtn(
                    imagePath: imagePath,
                    buttonText: item,
                    onPressed: () {
                      print("object");
                    },
                    backgroundColor: getBtnColor(),
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
