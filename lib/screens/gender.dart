import 'package:flutter/material.dart';
import 'package:autism_app/components/my_btn.dart';
import 'package:autism_app/screens/home.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:autism_app/components/back_btn.dart';

class GenderPage extends StatefulWidget {
  const GenderPage({super.key});
  @override
  State<GenderPage> createState() => _GenderPage();
}

class _GenderPage extends State<GenderPage> {
  AudioPlayer? _player;

  @override
  void dispose() {
    _player?.dispose();
    super.dispose();
  }

  void _playVoiceAndNavigate(
      BuildContext context, String audioPath, bool isBoy) async {
    _player?.dispose();
    _player = AudioPlayer();
    _player?.play(AssetSource('audios/$audioPath'));

    Future.delayed(const Duration(seconds: 2), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Home(isBoy: isBoy)),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double spacing = screenWidth * 0.05;
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyBtn(
                      imagePath: 'assets/images/home/boy.png',
                      buttonText: 'طفل',
                      onPressed: () {
                        _playVoiceAndNavigate(context, 'home/boy.wav', true);
                      },
                      backgroundColor: const Color(0xFFA2C6E5),
                    ),
                    SizedBox(width: spacing),
                    MyBtn(
                      imagePath: 'assets/images/home/girl.png',
                      buttonText: 'طفلة',
                      onPressed: () {
                        _playVoiceAndNavigate(context, 'home/girl.wav', false);
                      },
                      backgroundColor: const Color(0xFFCEA7CC),
                    ),
                  ],
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
