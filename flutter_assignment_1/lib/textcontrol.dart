import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final Function changeHandler;

  TextControl(this.changeHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: RaisedButton(
        child: Text('Change Text'),
        textColor: Colors.white,
        color: Colors.blue,
        onPressed: changeHandler,
      ),
    );
  }
}
