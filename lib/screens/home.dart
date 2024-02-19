import 'package:flutter/material.dart';
import 'package:autism_app/components/my_btn.dart';
import 'package:autism_app/screens/category.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:autism_app/components/back_btn.dart';

class Home extends StatefulWidget {
  final bool isBoy;
  const Home({super.key, required this.isBoy});

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  AudioPlayer? _player;

  @override
  void dispose() {
    _player?.dispose();
    super.dispose();
  }

  void _playVoiceAndNavigate(BuildContext context, String audioPath, bool isBoy,
      String categoryName) async {
    _player?.dispose();
    _player = AudioPlayer();
    _player?.play(AssetSource('audios/$audioPath'));

    Future.delayed(const Duration(seconds: 2), () {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                CategoryPage(isBoy: isBoy, categoryName: categoryName)),
      );
    });
  }

  Color getBtnColor() {
    return widget.isBoy ? const Color(0xFFA2C6E5) : const Color(0xFFCEA7CC);
  }

  String getFeelImagePath() {
    return widget.isBoy
        ? 'assets/images/home/mother-boy-feel.png'
        : 'assets/images/home/mother-girl-feel.png';
  }

  String getLearnImagePath() {
    return widget.isBoy
        ? 'assets/images/home/mother-boy-learn.png'
        : 'assets/images/home/mother-girl-learn.png';
  }

  String getWantImagePath() {
    return widget.isBoy
        ? 'assets/images/home/mother-boy-want.png'
        : 'assets/images/home/mother-girl-want.png';
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double btnSize = screenWidth * 0.3;
    double spacing = screenWidth * 0.03;
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: btnSize,
                  child: MyBtn(
                    imagePath: getWantImagePath(),
                    buttonText: 'حاب',
                    onPressed: () {
                      _playVoiceAndNavigate(
                          context, '1.wav', widget.isBoy, 'want');
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
                      _playVoiceAndNavigate(
                          context, '1.wav', widget.isBoy, 'learn');
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
                      _playVoiceAndNavigate(
                          context, '1.wav', widget.isBoy, 'feel');
                    },
                    backgroundColor: getBtnColor(),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              top: 16,
              left: 0,
              child: MyBackButton(
                context: context,
              )),
        ],
      ),
    );
  }
}
