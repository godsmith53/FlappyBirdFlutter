import 'package:flame/game.dart';
import 'package:flappybird/game/flappybirdgame.dart';
import 'package:flappybird/screens/gameoverscreen.dart';
import 'package:flappybird/screens/mainmenuscreen.dart';
import 'package:flutter/material.dart';

void main() {
  final game = FlappyBirdGame();
  runApp(
    GameWidget(
      game: game,
      initialActiveOverlays: const[MainMenuScreen.id],
      overlayBuilderMap: {
        'mainMenu':(context,_)=>MainMenuScreen(game: game),
        'gameOver':(context,_)=>GameOverScreen(game: game)
      },
      )
  );
}
