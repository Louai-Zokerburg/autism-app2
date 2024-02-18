import 'package:flutter/material.dart';
import 'package:autism_app/components/my_btn.dart';
import 'package:audioplayers/audioplayers.dart';

class ContentPage extends StatefulWidget {
  final bool isBoy;
  final dynamic content;
  final String basePath;

  const ContentPage(
      {super.key, required this.content, required this.isBoy, required this.basePath});

  @override
  State<ContentPage> createState() => _ContentPage();
}

class _ContentPage extends State<ContentPage> {
  AudioPlayer? _player;

  @override
  void dispose() {
    _player?.dispose();
    super.dispose();
  }

  void _playVoiceAndNavigate(String audioPath)  async {
    _player?.dispose();
    _player = AudioPlayer();
    _player?.play(AssetSource('audios/$audioPath'));
  }

  Color getBtnColor() {
    return widget.isBoy ? const Color(0xFFA2C6E5) : const Color(0xFFCEA7CC);
  }

  
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double btnSize = screenWidth * 0.3;

    var contentT = widget.content['label'];

    var i = 1;

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: <Widget>[
            ...widget.content['items'].map((item) {
              String shit = widget.basePath;
              String imagePath = "$shit/$contentT/$i.png";
              i++;
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: btnSize,
                  child: MyBtn(
                    imagePath: imagePath,
                    buttonText: item,
                    onPressed: () {
                      _playVoiceAndNavigate('1.wav');
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
