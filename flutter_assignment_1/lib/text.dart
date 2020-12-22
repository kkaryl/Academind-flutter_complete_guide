import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class TextX extends StatelessWidget {
  final String text;

  TextX(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(text),
    );
  }
}
