import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum Back { street, gidro, bam }

String street = "assets/images/street.jpg";
String gidro = "assets/images/gidro.jpg";
String bam = "assets/images/bam.png";



_getBackground(Back back) {
  switch (back) {
    case Back.bam:
      return bam;
    case Back.gidro:
      return gidro;
    case Back.street:
      return street;
  }
}

class Background extends StatefulWidget {
  const Background({Key? key}) : super(key: key);

  @override
  _BackgroundState createState() => _BackgroundState();
}

class _BackgroundState extends State<Background> {
  Back background = Back.street;

  ChangeBackground(Back background) {
    setState(() {
      this.background = background;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(_getBackground(background)), fit: BoxFit.cover)),
    );
  }
}
