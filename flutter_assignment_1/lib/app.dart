import 'package:flutter/material.dart';
import './text.dart';
import './textcontrol.dart';

class App extends StatelessWidget {
  final List<String> randomTexts;
  final int textIndex;
  final Function changeHandler;

  App({
    @required this.randomTexts,
    @required this.textIndex,
    @required this.changeHandler,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextX(randomTexts[textIndex]),
        TextControl(changeHandler),
      ],
    );
  }
}
