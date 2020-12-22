import 'package:flutter/material.dart';

class Reset extends StatelessWidget {
  final Function resetHandler;

  Reset(this.resetHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: RaisedButton(
        child: Text('Reset'),
        textColor: Colors.white,
        color: Colors.red,
        onPressed: resetHandler,
      ),
    );
  }
}
