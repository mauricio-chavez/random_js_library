import 'package:flutter/material.dart';

class JavascriptWord extends StatelessWidget {
  final String word;

  JavascriptWord({this.word});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          '$word.js',
          style: TextStyle(
            fontSize: 70.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 30.0,
        ),
      ],
    );
  }
}
