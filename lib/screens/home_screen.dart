import 'package:flutter/material.dart';
import 'package:flutter_continuous_integration/widgets/character_item_wg.dart';
import 'package:video_appbar/video_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const characters = [
    'brimstone',
    'phoenix',
    'sage',
    'sova',
    'vyper',
    'cypher'
  ];
  static const mainColor = Color(0xFFff4655);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black87,
        appBar: VideoAppBar(
          source: VideoAppBarSource.network(
            url: 'https://github.com/jorgemvv01/flutter_video_appbar/raw/main/example/res/video/video_01.mp4'
          ),
          height: 260,
          actions: [
            IconButton(
                onPressed: null,
                icon: Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.circular(25)),
                  child: const Icon(
                    Icons.person,
                    size: 22,
                    color: Colors.white,
                  ),
                ))
          ],
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.black.withOpacity(0.25), Colors.black]),
          body: Center(
            child: Text(
              'Flutter - CI',
              style: TextStyle(
                  fontSize: 26,
                  color: mainColor.withOpacity(0.6),
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                  child: GridView.builder(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: size.height * 0.3,
                    mainAxisExtent: size.height * 0.38,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10),
                itemCount: characters.length,
                itemBuilder: (_, index) {
                  return CharacterItem(character: characters[index]);
                },
              )),
            ],
          ),
        ),
      ),
    );
  }
}
