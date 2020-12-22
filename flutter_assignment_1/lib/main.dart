// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text
import 'package:flutter/material.dart';
import './app.dart';
import './reset.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  static const randomTexts = [
    'This is some text.',
    'This is another text.',
    'This is the third text.',
    'This is the last text.',
  ];

  var _textIndex = 0;

  void _changeText() {
    setState(() {
      _textIndex = _textIndex + 1;
    });
  }

  void _resetText() {
    setState(() {
      _textIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First Assignment'),
        ),
        body: _textIndex < randomTexts.length
            ? App(
                randomTexts: randomTexts,
                textIndex: _textIndex,
                changeHandler: _changeText,
              )
            : Reset(_resetText),
      ),
    );
  }
}
