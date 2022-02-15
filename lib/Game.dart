import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'TextBox.dart';
import 'sprites.dart';
import 'background.dart';

class Game extends StatefulWidget {
  const Game({Key? key}) : super(key: key);

  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
            child: Stack(
              children: [
                Background(),
                Sprites(),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: TextBox(),
                )
              ],
            )
    ),
    );
  }
}
