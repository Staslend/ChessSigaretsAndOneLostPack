import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'goldenRatio.dart';


class TextBox extends StatefulWidget {
  const TextBox({Key? key}) : super(key: key);

  @override
  _TextBoxState createState() => _TextBoxState();
}

class _TextBoxState extends State<TextBox> {
  String _text = "картопля";

  void _changeText(String newLine) {
    setState(() {
      _text = newLine;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        color: Colors.green,
        child: GestureDetector(
            onTap: () {
              _changeText(
                  "Мы отправились пить пиво что бы заглушить боль от пары Гуриненка");
            },
            child: Container(
              padding: EdgeInsets.all(getLow(4, MediaQuery.of(context).size.height)) ,
              height: getLow(1, MediaQuery.of(context).size.height),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/dialog_box.png"),
                        fit: BoxFit.fill)),
                child: Text(
                  _text,
                  style: TextStyle(color: Colors.white, fontSize: 30),
                )
            )
        )
        /*
        child: Stack(
          children: [
            const Image(
              image: AssetImage("assets/images/dialog_box.png"),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text.rich(
                  TextSpan(
                    text: _text,
                  ),
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              )
            ),
            GestureDetector(
              onTap: () {
                _changeText(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit");
              },
            )
          ],
        )
        */
        );
  }
}
