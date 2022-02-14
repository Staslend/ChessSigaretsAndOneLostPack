import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'TextBox.dart' as storybox;

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

            //Background
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/bam.png"),
                    fit: BoxFit.cover)),


            //Sprites and text
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: storybox.TextBox(),
                )
              ],
            )
    ),
    );
  }
}
