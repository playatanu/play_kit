import 'package:flutter/material.dart';
import 'package:play_kit/play_kit.dart';

class PlayMaterial extends StatelessWidget {
  const PlayMaterial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(children: [
          Image.network(
            'https://flutter.dev/assets/images/homepage/carousel/slide_1-bg.jpg',
            fit: BoxFit.cover,
            height: 800,
          ),
          Image.network(
            'https://flutter.dev/assets/images/homepage/carousel/phone_bezel.png',
            fit: BoxFit.cover,
            height: 700,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              PlayContainer(
                height: 200,
                width: 200,
                dark: true,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: Center(
                  child: PlayTitle(
                    title: 'PLAY_KIT',
                    fontSize: 30,
                    dark: true,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              PlayDivider(
                height: 20,
                dark: true,
              ),
              PlayTitle(
                title: 'PLAY_KIT',
                fontSize: 50,
                dark: true,
                fontWeight: FontWeight.w900,
              ),
            ],
          )
        ]),
      ),
    );
  }
}
