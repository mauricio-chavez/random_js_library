import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import './javascript_word.dart';

class RandomLibrary extends StatelessWidget {
  final String word;
  final Function onPressed;

  RandomLibrary({this.word, this.onPressed});

  void _launchUrl(context) async {
    final url = 'https://duckduckgo.com/$word.js';
    if (await canLaunch(url)) {
      await launch(url);
      final snackBar = SnackBar(
        content: Text('Launched $url'),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: () {},
        ),
      );
      Scaffold.of(context).showSnackBar(snackBar);
    } else {
      final snackBar = SnackBar(
        content: Text('Could not launch $url'),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: () {},
        ),
      );
      Scaffold.of(context).showSnackBar(snackBar);
    }
  }

  @override
  Widget build(BuildContext context) {
    final columnWidgets = <Widget>[
      RaisedButton(
        color: Colors.black,
        onPressed: onPressed,
        child: Text(
          'Get random library',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      )
    ];

    if (word != null) {
      columnWidgets.insert(
        0,
        JavascriptWord(
          word: word,
        ),
      );
      columnWidgets.add(
        RaisedButton(
          onPressed: () {
            _launchUrl(context);
          },
          child: Text(
            'Duck Duck Go it!',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );
    }

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: columnWidgets,
      ),
    );
  }
}
