import 'package:flappybird/game/assets.dart';
import 'package:flappybird/game/flappybirdgame.dart';
import 'package:flutter/material.dart';

class MainMenuScreen extends StatelessWidget {
  final FlappyBirdGame game;
  static const String id = 'mainMenu';

  const MainMenuScreen({Key? key, required this.game}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    game.pauseEngine();
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          game.overlays.remove('mainMenu');
          game.resumeEngine();
        },
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(Assets.menu), fit: BoxFit.cover),
          ),
          child: Image.asset(Assets.message),
        ),
      ),
    );
  }
}
