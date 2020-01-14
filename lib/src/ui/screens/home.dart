import 'package:flutter/material.dart';
import 'package:random_words/random_words.dart';
import '../widgets/random_library.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String word;

  void _getLibrary() {
    this.setState(() {
      word = generateNoun().first.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text('Javascript Drink Game!'),
      ),
      body: RandomLibrary(
        word: word,
        onPressed: _getLibrary,
      ),
    );
  }
}
