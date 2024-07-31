import 'package:flutter/material.dart';
import 'package:video_appbar/video_appbar.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});
  static const mainColor = Color(0xFFff4655);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black87,
        appBar: VideoAppBar(
          source: VideoAppBarSource.network(
            url: 'https://github.com/jorgemvv01/flutter_video_appbar/raw/main/example/res/video/video_02.mp4'
          ),
          height: 54,
        ),
        body: Center(
            child: TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text(
                  'Go to home',
                  style: TextStyle(fontSize: 16),
                ))),
      ),
    );
  }
}