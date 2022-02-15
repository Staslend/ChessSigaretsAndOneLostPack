import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum Character { Yura, Artem, Denis, Empty }

Image yura = const Image(image: AssetImage("assets/images/yura.png"));
Image artem = const Image(image: AssetImage("assets/images/artem.png"));
Image denis = const Image(image: AssetImage("assets/images/yura.png"));

Sprite(Character s) {
  switch (s) {
    case Character.Empty:
      return SizedBox.shrink();
    case Character.Yura:
      return yura;
    case Character.Artem:
      return artem;
    case Character.Denis:
      return denis;
  }
}

ShowSprites(Character s1, Character s2, Character s3) {
  return Container(
    child: Stack(
      children: [
        Align(
          child: Sprite(s1),
          alignment: Alignment.centerLeft,
        ),
        Align(
          child: Sprite(s2),
          alignment: Alignment.center,
        ),
        Align(
          child: Sprite(s3),
          alignment: Alignment.centerRight,
        )
      ],
    ),
  );
}

class Sprites extends StatefulWidget {
  const Sprites({Key? key}) : super(key: key);

  @override
  _SpritesState createState() => _SpritesState();
}

class _SpritesState extends State<Sprites> {
  @override

  Character s1 = Character.Empty;
  Character s2 = Character.Empty;
  Character s3 = Character.Yura;

  ChageSprites(Character s1, Character s2, Character s3)
  {
    setState(() {
      this.s1 = s1;
      this.s2 = s2;
      this.s3 = s3;
    });
  }

  Widget build(BuildContext context) {
    return Container(
      child: ShowSprites(s1, s2, s3)
    );
  }
}
