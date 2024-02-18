import 'package:flutter/material.dart';
import 'package:autism_app/components/my_btn.dart';
import 'package:autism_app/data/data.dart';
import 'package:autism_app/screens/content.dart';
import 'package:audioplayers/audioplayers.dart';

class CategoryPage extends StatefulWidget {
  final bool isBoy;
  final String categoryName;

  const CategoryPage({super.key, required this.categoryName, required this.isBoy});

  @override
  State<CategoryPage> createState() => _CategoryPage();
}

class _CategoryPage extends State<CategoryPage> {
  AudioPlayer? _player;

  @override
  void dispose() {
    _player?.dispose();
    super.dispose();
  }

  void _playVoiceAndNavigate(BuildContext context, String audioPath, bool isBoy, String basePath, dynamic item )  async {
    _player?.dispose();
    _player = AudioPlayer();
    _player?.play(AssetSource('audios/$audioPath'));

    Future.delayed(const Duration(seconds: 2), () {
      String shit = widget.categoryName;
        Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ContentPage(
                                  content: item,
                                  isBoy: widget.isBoy,
                                  basePath: 'assets/images/$shit',
                                )),
                      );
    });
  }

  Color getBtnColor() {
    return widget.isBoy ? const Color(0xFFA2C6E5) : const Color(0xFFCEA7CC);
  }

  @override
  Widget build(BuildContext context) {
    var category = data[widget.categoryName];
    double screenWidth = MediaQuery.of(context).size.width;
    double btnSize = screenWidth * 0.3;

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: <Widget>[
            ...category['items'].map((item) {
              String label = item['label'];
              String shit2 = widget.categoryName;
              String imagePath = "assets/images/$shit2/$label.png";
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: btnSize,
                  child: MyBtn(
                    imagePath: imagePath,
                    buttonText: label,
                    onPressed: () {
                      var shit = widget.categoryName;
                      _playVoiceAndNavigate(context, '1.wav', widget.isBoy, 'assets/images/$shit', item);
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
